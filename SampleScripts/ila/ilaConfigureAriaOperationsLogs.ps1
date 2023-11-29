# Copyright 2023 Broadcom. All Rights Reserved.
# SPDX-License-Identifier: BSD-2

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-11-27
    ===================================================================================================================

    .CHANGELOG
    - 1.0.001   (Gary Blake / 2022-01-05)   - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16)   - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-04)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output
    - 1.2.001   (Ryan Johnson / 2023-09-06) - Updated the product names for VMware Aria branding.
                                            - Updated the script name for VMware Aria branding.

    ===================================================================================================================

    .SYNOPSIS
    Configures Aria Operations for Logs for Intelligent Logging and Analytics.

    .DESCRIPTION
    The ilaConfigureVrealizeLogInsight.ps1 provides a single script to configure Aria Operations for Logs
    as defined by the Intelligent Logging and Analytics for VMware Cloud Foundation validated solution.

    .EXAMPLE
    ilaConfigureVrealizeLogInsight.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the configuration of Aria Operations for Logs using the parameters provided within the Planning and Preparation Workbook.
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

# Define Reusable Parameters
$solutionName       = "Intelligent Logging and Analytics for VMware Cloud Foundation"
$logsProductName    = "Aria Operations for Logs"
$lcmProductName     = "Aria Suite Lifecycle"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring $logsProductName Based on $solutionName" -Colour Yellow
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
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -colour Green
            }

            $sddcDomainName         = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName      = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $domain                 = $pnpWorkbook.Workbook.Names["parent_dns_zone"].Value
            $subDomain              = $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $vmNameNode1            = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value
            $vmNameNode2            = $pnpWorkbook.Workbook.Names["xreg_wsa_nodeb_hostname"].Value
            $vmNameNode3            = $pnpWorkbook.Workbook.Names["xreg_wsa_nodec_hostname"].Value
            $vmRootPass             = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            
            # Connect a VI Workload Domain to Aria Operations for Logs
            Write-LogMessage -Type INFO -Message "Connect a VI Workload Domain to $logsProductName"
            $StatusMsg = Register-vRLIWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status ENABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure the NSX Edge Nodes to Forward Log Events to Aria Operations for Logs
            Write-LogMessage -Type INFO -Message "Configure the NSX Edge Nodes to Forward Log Events to $logsProductName"
            $StatusMsg = Add-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configuring the NSX Edge Nodes to Forward Log Events to $logsProductName for Workload Domain ($sddcDomainName): SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Configuring the NSX Edge Nodes to Forward Log Events to $logsProductName for Workload Domain ($sddcWldDomainName), already exists: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configuring the NSX Edge Nodes to Forward Log Events to $logsProductName for Workload Domain ($sddcWldDomainName): SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Configuring the NSX Edge Nodes to Forward Log Events to $logsProductName for Workload Domain ($sddcWldDomainName), already exists: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }  
                
            # Download, Install and Configure the Aria Operations for Logs Agent on the Clustered Workspace ONE Access Nodes
            Write-LogMessage -Type INFO -Message "Download, Install and Configure the $logsProductName Agent on the Clustered Workspace ONE Access Nodes"
            $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode1 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            if (((Invoke-Expression Get-VCFWSA).nodes).Count -gt 1) {
                $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode2 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode3 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            if (((Invoke-Expression Get-VCFWSA).nodes).Count -gt 1) {
                $vidmVmList                 = "$vmNameNode1.$domain","$vmNameNode2.$domain","$vmNameNode2.$domain"
                $photonVmList               = "$($pnpWorkbook.Workbook.Names["sddc_mgr_hostname"].Value).$subDomain","$($pnpWorkbook.Workbook.Names["xreg_vrslcm_hostname"].Value).$domain","$vmNameNode1.$domain","$vmNameNode2.$domain","$vmNameNode3.$domain"
            } else {
                $vidmVmList                 = "$vmNameNode1.$domain"
                $photonVmList               = "$($pnpWorkbook.Workbook.Names["sddc_mgr_hostname"].Value).$subDomain","$($pnpWorkbook.Workbook.Names["xreg_vrslcm_hostname"].Value).$domain","$vmNameNode1.$domain"
            }  
            
            # Configure the Aria Operations for Logs Agent Group for the Clustered Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Configure the $logsProductName Agent Group for the Clustered Workspace ONE Access"
            $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupName "Workspace ONE Access - Appliance Agent Group" -agentGroupType wsa -criteria $vidmVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Create an Aria Operations for Logs Photon OS Agent Group for the Management Nodes
            Write-LogMessage -Type INFO -Message "Create a $logsProductName Photon OS Agent Group for the Management Nodes"
            $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass "Photon OS - Appliance Agent Group" -agentGroupType photon -criteria $photonVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Configuring $logsProductName Based on $solutionName" -Colour Yellow
