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
    Creation Date:      2022-03-04
    ===================================================================================================================

    .CHANGELOG
    - 1.1.000   (Gary Blake / 2022-10-04)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output
    - 1.2.001   (Ryan Johnson / 2023-09-06) - Updated the product names for VMware Aria branding.
                                            - Updated the script name for VMware Aria branding.

    ===================================================================================================================

    .SYNOPSIS
    Removes Intelligent Logging and Analytics from a VMware Cloud Foundation instance.

    .DESCRIPTION
    The ilaUndoVrealizeLogInsight.ps1 provides a single script to remove Aria Operations for Logs
    as defined by the Intelligent Logging and Analytics for VMware Cloud Foundation validated solution.

    .EXAMPLE
    ilaUndoVrealizeLogInsight.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the removal of the Intelligent Logging and Analytics for VMware Cloud Foundation validated solution using the parameters provided within the Planning and Preparation Workbook.
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
Write-LogMessage -Type INFO -Message "Starting thw Process of Removing $solutionName from Instance: $sddcManagerFqdn" -Colour Yellow
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

            $sddcDomainName             = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName          = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $vmNameNode1                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value
            $vmNameNode2                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodeb_hostname"].Value
            $vmNameNode3                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodec_hostname"].Value
            $vmRootPass                 = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            $wsaFqdn                    = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaUser                    = "admin"
            $wsaPass                    = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $domain                     = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $bindUser                   = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value
            $bindPass                   = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $baseDnGroup                = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value
            $vrliAdminGroup             = $pnpWorkbook.Workbook.Names["group_gg_vrli_admins"].Value
            $vrliUserGroup              = $pnpWorkbook.Workbook.Names["group_gg_vrli_users"].Value
            $vrliViewerGroup            = $pnpWorkbook.Workbook.Names["group_gg_vrli_viewers"].Value
            $adGroups                   = "$vrliAdminGroup","$vrliUserGroup","$vrliViewerGroup"
            $environemntName            = $pnpWorkbook.Workbook.Names["vrslcm_reg_env"].Value
            $ruleName                   = "vm-vm-rule-wsa-vrli"
            $drsGroupNameVrli           = $pnpWorkbook.Workbook.Names["region_vrli_vm_group_name"].Value
            $antiAffinityRuleName       = $pnpWorkbook.Workbook.Names["region_vrli_anti_affinity_rule_name"].Value
            $vrliFolder                 = $pnpWorkbook.Workbook.Names["region_vrli_vm_folder"].Value
            $passwordAlias              = $pnpWorkbook.Workbook.Names["region_vrli_admin_password_alias"].Value
            $certificateAlias           = $pnpWorkbook.Workbook.Names["region_vrli_virtual_hostname"].Value
            $licenseAlias               = $logsProductName

            # Remove the Aria Operations for Logs Agent on the Clustered Workspace ONE Access Nodes
            Write-LogMessage -Type INFO -Message "Attempting to Remove the $logsProductName Agent on the Clustered Workspace ONE Access Nodes"
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode1 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode2 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode3 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove the Aria Operations for Logs Configuration from the NSX Edge Nodes
            Write-LogMessage -Type INFO -Message "Attempting to Remove the $logsProductName Configuration from the NSX Edge Nodes"
            $StatusMsg = Undo-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Disconnect a VI Workload Domain from Aria Operations for Logs
            Write-LogMessage -Type INFO -Message "Attempt to Disconnect a VI Workload Domain from $logsProductName"
            $StatusMsg = Register-vRLIWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status DISABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Aria Operations for Logs Active Directory Groups from Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Attempting to Remove $logsProductName Active Directory Groups from Workspace ONE Access"
            $StatusMsg = Undo-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete Aria Operations for Logs from Aria Suite Lifecycle
            Write-LogMessage -Type INFO -Message "Attempting to Delete $logsProductName from $lcmProductName"
            $StatusMsg = Undo-vRLIDeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -environmentName $environemntName -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Delete the VM Group and Start Up Rule for the Aria Operations for Logs Cluster
            Write-LogMessage -Type INFO -Message "Attempting to Delete the VM Group and Start Up Rule for the $logsProductName Cluster"
            $StatusMsg = Undo-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVrli -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Delete the vSphere DRS Anti-Affinity Rule for Aria Operations for Logs
            Write-LogMessage -Type INFO -Message "Attempting to Delete the vSphere DRS Anti-Affinity Rule for $logsProductName"
            $StatusMsg = Undo-AntiAffinityRule -server  $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $antiAffinityRuleName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the Virtual Machine and Template Folder for Aria Operations for Logs
            Write-LogMessage -Type INFO -Message "Attempting Delete the Virtual Machine and Template Folder for $logsProductName"
            $StatusMsg = Undo-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -foldername $vrliFolder -folderType VM -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the Aria Operations for Logs Admin Password from Aria Suite Lifecycle
            Write-LogMessage -Type INFO -Message "Attempted to Delete the $logsProductName Admin Password from $lcmProductName"
            $StatusMsg = Undo-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $passwordAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the Aria Operations for Logs Certificate from Aria Suite Lifecycle
            Write-LogMessage -Type INFO -Message "Attempting to Delete the $logsProductName Certificate from $lcmProductName"
            $StatusMsg = Undo-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete Aria Operations for Logs License from Aria Suite Lifecycle
            Write-LogMessage -Type INFO -Message "Attempting to Delete $logsProductName License from $lcmProductName"
            $StatusMsg = Undo-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Removing $solutionName from Instance: $sddcManagerFqdn" -Colour Yellow
