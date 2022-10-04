# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   2022-03-04
    Copyright 2021-2022 VMware, Inc.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.1.000   (Gary Blake / 2022-10-04) - Added Support for VCF 4.5.x Planning and Prep Workbook

    ===================================================================================================================

    .SYNOPSIS
    Remove Intelligent Logging and Analytics from a VMware Cloud Foundation instance

    .DESCRIPTION
    The ilaUndoVrealizeLogInsight.ps1 provides a single script to remove Intelligent Logging and Analytics from a
    VMware Cloud Foundation instance

    .EXAMPLE
    ilaUndoVrealizeLogInsight.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the removal of Intelligent Logging and Analytics from a VMware Cloud Foundation instance using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting thw Process of Removing Intelligent Logging and Analytics from a VMware Cloud Foundation instance" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"

Try {
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    }
    else {
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
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.3.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
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
            $licenseAlias               =  "vRealize Log Insight"

            # Remove the vRealize Log Insight Agent on the Clustered Workspace ONE Access Nodes
            Write-LogMessage -Type INFO -Message "Attempting to Remove the vRealize Log Insight Agent on the Clustered Workspace ONE Access Nodes"
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode1 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode2 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode3 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove the vRealize Log Insight Configuration from the NSX Edge Nodes
            Write-LogMessage -Type INFO -Message "Attempting to Remove the vRealize Log Insight Configuration from the NSX Edge Nodes"
            $StatusMsg = Undo-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Disconnect a VI Workload Domain from vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Attempt to Disconnect a VI Workload Domain from vRealize Log Insight"
            $StatusMsg = Register-vRLIWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status DISABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove vRelize Log Insight Active Directory Groups from Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Attempting to Remove vRelize Log Insight Active Directory Groups from Workspace ONE Access"
            $StatusMsg = Undo-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete vRealize Log Insight from vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Delete vRealize Log Insight from vRealize Suite Lifecycle Manager"
            $StatusMsg = Undo-vRLIDeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -environmentName $environemntName -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Delete the VM Group and Start Up Rule for the vRealize Log Insight Cluster
            Write-LogMessage -Type INFO -Message "Attempting to Delete the VM Group and Start Up Rule for the vRealize Log Insight Cluster"
            $StatusMsg = Undo-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVrli -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Delete the vSphere DRS Anti-Affinity Rule for vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Attempting to Delete the vSphere DRS Anti-Affinity Rule for vRealize Log Insight"
            $StatusMsg = Undo-AntiAffinityRule -server  $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $antiAffinityRuleName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the Virtual Machine and Template Folder for vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Attempting Delete the Virtual Machine and Template Folder for vRealize Log Insight"
            $StatusMsg = Undo-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -foldername $vrliFolder -folderType VM -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the vRealize Log Insight Admin Password from vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempted to Delete the vRealize Log Insight Admin Password from vRealize Suite Lifecycle Manager"
            $StatusMsg = Undo-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $passwordAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete the vRealize Log Insight Certificate from vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Delete the vRealize Log Insight Certificate from vRealize Suite Lifecycle Manager"
            $StatusMsg = Undo-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Delete vRealize Log Insight License from vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Delete vRealize Log Insight License from vRealize Suite Lifecycle Manager"
            $StatusMsg = Undo-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}
