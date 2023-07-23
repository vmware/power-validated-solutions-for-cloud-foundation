# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-12-15
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-02-16)   - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-04)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output
                                            - Pull the .csv files from the install directory of PowerValidatedSolutions
                                            - Automatically discover the latest SDDC Health Pack file in the -filepath

    ===================================================================================================================
    .SYNOPSIS
    Configure Integration of vRealize Operations for Intelligent Operations Management

    .DESCRIPTION
    The iomConfigureVrealizeOperations.ps1 provides a single script to configure the intergration of vRealize Operations
    as defined by the Intelligent Operations Management Validated Solution

    .EXAMPLE
    iomConfigureVrealizeOperations.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment and configure of vRealize Operations using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

# Define Reusable Parameters
$solutionName               = "Intelligent Operations Management for VMware Cloud Foundation"
$operationsProductName      = "vRealize Operations Manager"
$templatePath               = (Get-InstalledModule -Name PowerValidatedSolutions).InstalledLocation + "\SampleNotifications\"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring of $operationsProductName Based on $solutionName" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"
Write-LogMessage -Type INFO -Message "Setting the working directoy to path: $filePath"

Try {
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    } else {
        Write-LogMessage -Type INFO -Message "Found Planning and Preparation Workbook: $workbook"
    }
    Write-LogMessage -Type INFO -Message "Checking a Connection to SDDC Manager: $sddcManagerFqdn"
    if (Test-VCFConnection -server $sddcManagerFqdn ) {
        Write-LogMessage -Type INFO -Message "Attempting to connect to VMware Cloud Foundation to Gather System Details"
        if (Test-VCFAuthentication -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass) {
            Write-LogMessage -Type INFO -Message "Gathering Details from SDDC Manager Inventory and Extracting Worksheet Data from the Excel Workbook"
            Write-LogMessage -type INFO -message "Opening the Excel Workbook: $Workbook"
            $pnpWorkbook = Open-ExcelPackage -Path $Workbook
            Write-LogMessage -type INFO -message "Checking Valid Planning and Preparation Workbook Provided"
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
                Write-LogMessage -type INFO -message "Planning and Preparation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -Colour Green
            }

            $sddcDomainName                         = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName                      = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $collectorGroupName                     = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value + "-collector-group"
            $defaultCollectorGroup                  = "Default collector group"
            $vropsFqdn                              = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_fqdn"].Value
            $vropsIpList                            = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodec_ip"].Value
            $vropsAdapterName                       = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_hostname"].Value
            $vropsrcIpList                          = $pnpWorkbook.Workbook.Names["region_vropsca_ip"].Value + "," + $pnpWorkbook.Workbook.Names["region_vropscb_ip"].Value
            $vropsrcAdapterName                     = $collectorGroupName
            $healthPackSearchString                 = 'vmware-mpforsddchealth-' + '*'
            $healthPackFile                         = ((Get-ChildItem -path ($filePath + "\" + $healthPackSearchString)) | Sort-Object)[-1].name

            $csvFile = ($templatePath + "vrops-vcf-notifications.csv")
            if (!(Test-Path ($csvFile) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Notification CSV File: $csvFile, check -filePath value provided and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Notification CSV File: $csvFile" }

            # Connect vRealize Operations Manager to the VI Workload Domains in the First VMware Cloud Foundation Instance
            Write-LogMessage -Type INFO -Message "Connect $operationsProductName to the VI Workload Domains in the First VMware Cloud Foundation Instance"
            $StatusMsg = Register-vROPSWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status ENABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Modify the vCenter Server Adapters for the First VMware Cloud Foundation Instance in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Modify the vCenter Server Adapters for the First VMware Cloud Foundation Instance in $operationsProductName"
            $StatusMsg = Update-vROPSAdapterVcenter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Modifing the vCenter Server Adapters for the First VMware Cloud Foundation Instance: SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Modifing the vCenter Server Adapters for the First VMware Cloud Foundation Instance, already modifed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add NSX Manager Adapters in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Add NSX Manager Adapters in $operationsProductName"
            $StatusMsg = Add-vROPSAdapterNsxt -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vROPSAdapterNsxt -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Install the SDDC Health Monitoring Solution in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Install the SDDC Health Monitoring Solution in $operationsProductName"
            $StatusMsg = Enable-vROPSManagementPack -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -packType "SDDC Health" -pakFile $healthPackFile -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Rename the SDDC Health Adapters for the vRealize Operations Manager Analytics Cluster Nodes
            Write-LogMessage -Type INFO -Message "Rename the SDDC Health Adapters for the $operationsProductName Analytics Cluster Nodes"
            $StatusMsg = Update-vROPSAdapterSddcHealth -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Renaming the SDDC Health Adapters for the '$operationsProductName': SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Renaming the SDDC Health Adapters for the $operationsProductName, already performed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add SDDC Health Adapters for the vRealize Operations Manager Collector Nodes
            Write-LogMessage -Type INFO -Message "Add SDDC Health Adapters for the $operationsProductName Collector Nodes"
            $StatusMsg = Add-vROPSAdapterSddcHealth -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Adding Adapter (SDDC Health Adapter Instance) for Collectors to $operationsProductName ($vropsFqdn): SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Adding Adapter (SDDC Health Adapter Instance) for Remore Collectors to $operationsProductName ($vropsFqdn), already performed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Activate the Ping Management Pack in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Activate the Ping Management Pack in $operationsProductName"
            $StatusMsg = Register-vROPSManagementPack -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -state enable -packType Ping -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add Ping Adapters for the vRealize Operations Manager Nodes
            Write-LogMessage -Type INFO -Message "Add Ping Adapters for the $operationsProductName Nodes"
            $StatusMsg = Add-vROPSAdapterPing -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -addressList $vropsIpList -adapterName $vropsAdapterName -collectorGroupName $defaultCollectorGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vROPSAdapterPing -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -addressList $vropsrcIpList -adapterName $vropsrcAdapterName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    
            # Create Notifications in vRealize Operations Manager for VMware Cloud Foundation Issues
            Write-LogMessage -Type INFO -Message "Create Notifications in $operationsProductName for VMware Cloud Foundation Issues"
            $StatusMsg = Import-vROPSNotification -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -csvPath ($filePath + "\" + $csvFile) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Configuring of $operationsProductName Based on $solutionName" -Colour Yellow