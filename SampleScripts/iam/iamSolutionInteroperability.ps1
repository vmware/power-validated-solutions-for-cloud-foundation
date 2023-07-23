# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2022-10-10
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.1.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Configure Solution Interoperability for Identity and Access Management

    .DESCRIPTION
    The iamSolutionInteroperability.ps1 provides a single script to implement the configuration of Solution
    Interoperability as defined by the Identity and Access Management for VMware Cloud Foundation validated solution.

    .EXAMPLE
    iamSolutionInteroperability.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx
    This example performs the configuration of Solution Interoperability using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook
)

# Define Reusable Parameters
$solutionName               = "Identity and Access Management for VMware Cloud Foundation"
$operationsProductName      = "vRealize Operations Manager"
$logsProductName            = "vRealize Log Insight"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring Solution Interoperability for $solutionName" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"

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
            Write-LogMessage -type INFO -message "Checking Valid Planning and Prepatation Workbook Provided"
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x" ) -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x" )) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -colour Green
            }

            $wsaFqdn                            = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaVmName                          = $pnpWorkbook.Workbook.Names["region_wsa_hostname"].Value
            $wsaRootPassword                    = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_root_password"].Value
            $wsaUser                            = "admin"
            $wsaPass                            = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $wsaAgentGroupName                  = "Workspace ONE Access (IAM) - Appliance Agent Group"
            $photonAgentGroupName               = "Photon OS (IAM) - Appliance Agent Group"
            $vmList                             = $wsaFqdn
            $wsaIpList                          = $pnpWorkbook.Workbook.Names["region_wsa_ip"].Value
            $wsaAdapterName                     = $pnpWorkbook.Workbook.Names["region_wsa_hostname"].Value
            $remoteCollectorGroup               = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value + "-remote-collectors"

            if ((Get-VCFvROPS).status -eq "ACTIVE") {
                Write-LogMessage -Type INFO -Message "Configure Integration with $operationsProductName" -Colour Cyan

                # Add a VMware Identity Manager Adapter for the Standalone Workspace ONE Access Instance
                Write-LogMessage -Type INFO -Message "Attempting to Add a VMware Identity Manager Adapter for the Standalone Workspace ONE Access Instance"
                $StatusMsg = Add-vROPSAdapterIdentityManager -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaFqdn $wsaFqdn -wsaUser $wsaUser -wsaPass $wsaPass -collectorGroupName $remoteCollectorGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                
                # Add Ping Adapter for the Standalone Workspace ONE Access Instance
                Write-LogMessage -Type INFO -Message "Add Ping Adapter for the Standalone Workspace ONE Access Instance"
                $StatusMsg = Add-vROPSAdapterPing -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -addressList $wsaIpList -adapterName $wsaAdapterName -collectorGroupName $remoteCollectorGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            } else {
                Write-LogMessage -Type INFO -Message "Configure Integration with $operationsProductName, Not Installed: SKIPPED" -Colour Cyan
            }

            if ((Get-VCFvRLI).status -eq "ACTIVE") {
                Write-LogMessage -Type INFO -Message "Configure Integration with $logsProductName" -Colour Green

                # Install and Configure the vRealize Log Insight Agent on the Standalone Workspace ONE Access Appliance
                Write-LogMessage -Type INFO -Message "Install and Configure the $logsProductName Agent on the Standalone Workspace ONE Access Appliance"
                $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $wsaVmName -vmRootPass $wsaRootPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

                # Create a vRealize Log Insight Identity Manager Agent Group for the Standalone Workspace ONE Access
                Write-LogMessage -Type INFO -Message "Create a $logsProductName Identity Manager Agent Group for the Standalone Workspace ONE Access"
                $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupType wsa -agentGroupName $wsaAgentGroupName -criteria $vmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

                # Install and Configure the vRealize Log Insight Agent on the Standalone Workspace ONE Access Appliance
                Write-LogMessage -Type INFO -Message "Install and Configure the $logsProductName Agent on the Standalone Workspace ONE Access Appliance"
                $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupType wsa -agentGroupName $photonAgentGroupName -criteria $vmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            } else {
                Write-LogMessage -Type INFO -Message "Configure Integration with $logsProductName, Not Installed: SKIPPED" -Colour Cyan
            }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Configuring Solution Interoperability for $solutionName" -Colour Yellow
