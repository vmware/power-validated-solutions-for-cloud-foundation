# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2022-10-06
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.1.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.4.x Planning and Prep Workbook
                                            - Improvements to message output
                                            - Pull the .role files from the install directory of PowerValidatedSolutions

    ===================================================================================================================
    .SYNOPSIS
    Deploy vRealize Automation for Private Cloud Automation

    .DESCRIPTION
    The pcaDeployVrealizeAutomation.ps1 provides a single script to deploy and configure vRealize Automation as
    defined by the Private Cloud Automation for VMware Cloud Foundation validated solution.

    .EXAMPLE
    pcaDeployVrealizeAutomation.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment and configure of vRealize Automation using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

# Define Reusable Parameters
$solutionName               = "Private Cloud Automation for VMware Cloud Foundation"
$automationProductName      = "vRealize Automation"
$orchestratorProductName    = "vRealize Orchestrator"
$lcmProductName             = "vRealize Suite Lifecycle Manager"
$templatePath               = (Get-InstalledModule -Name PowerValidatedSolutions).InstalledLocation + "\vSphereRoles\"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying $automationProductName Based on $solutionName" -Colour Yellow
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
            Write-LogMessage -type INFO -message "Checking Valid Planning and Prepatation Workbook Provided"
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -colour Green
            }

            $licenseAlias                   = $pnpWorkbook.Workbook.Names["vra_license_alias"].Value
            $licenseKey                     = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) { $pnpWorkbook.Workbook.Names["vrs_license"].Value } else { $pnpWorkbook.Workbook.Names["vra_license"].Value }
            $certificateAlias               = $pnpWorkbook.Workbook.Names["xreg_vra_virtual_hostname"].Value
            $rootPasswordAlias              = $pnpWorkbook.Workbook.Names["xreg_vra_root_password_alias"].Value
            $rootPassword                   = $pnpWorkbook.Workbook.Names["xreg_vra_root_password"].Value
            $rootUserName                   = $pnpWorkbook.Workbook.Names["xreg_vra_root_username"].Value
            $xintPasswordAlias              = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password_alias"].Value
            $xintPassword                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            $xintUserName                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_admin_username"].Value
            $mgmtSddcDomainName             = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $wldSddcDomainName              = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $vraFolder                      = $pnpWorkbook.Workbook.Names["xreg_vra_vm_folder"].Value
            $vraVmList                      = $pnpWorkbook.Workbook.Names["xreg_vra_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vra_nodeb_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vra_nodec_hostname"].Value
            $antiAffinityRuleName           = $pnpWorkbook.Workbook.Names["xreg_vra_anti_affinity_rule"].Value
            $antiAffinityVMs                = $vraVmList
            $drsGroupNameWsa                = $pnpWorkbook.Workbook.Names["xreg_wsa_vm_group_name"].Value
            $drsGroupNameVra                = $pnpWorkbook.Workbook.Names["xreg_vra_vm_group_name"].Value
            $ruleName                       = $pnpWorkbook.Workbook.Names["xreg_vra_vm_vm_rule"].Value
            $drsGroupVMs                    = $vraVmList
            $workloadFolder                 = $pnpWorkbook.Workbook.Names["wld_vra_vm_folder"].Value
            $workloadResource               = $pnpWorkbook.Workbook.Names["wld_vra_vm_rp"].Value
            $stretchedCluster               = $pnpWorkbook.Workbook.Names["mgmt_stretched_cluster_chosen"].Value
            $groupName                      = $pnpWorkbook.Workbook.Names["mgmt_cluster"].Value + "_primary-az-vmgroup"
            $wsaFqdn                        = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value + "." + $pnpWorkbook.Workbook.Names["parent_dns_zone"].Value
            $wsaUser                        = $pnpWorkbook.Workbook.Names["local_admin_username"].Value
            $wsaPass                        = $pnpWorkbook.Workbook.Names["local_admin_password"].Value
            $domain                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $domainAlias                    = $pnpWorkbook.Workbook.Names["region_ad_child_netbios"].Value
            $bindUser                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value
            $bindPass                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $baseDnGroup                    = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value
            $orgOwner                       = $pnpWorkbook.Workbook.Names["group_gg_vra_org_owners"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $cloudAssemblyAdmins            = $pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_admins"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $cloudAssemblyUsers             = $pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_users"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $cloudAssemblyViewers           = $pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_viewers"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $serviceBrokerAdmins            = $pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_admins"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $serviceBrokerUsers             = $pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_users"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $serviceBrokerViewers           = $pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_viewers"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $orchestratorAdmins             = $pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_admins"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $orchestratorDesigners          = $pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_designers"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $orchestratorViewers            = $pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_viewers"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $adGroups                       = "$($pnpWorkbook.Workbook.Names["group_gg_vra_org_owners"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_admins"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_users"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_cloud_assembly_viewers"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_admins"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_users"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_service_broker_viewers"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_admins"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_designers"].Value)", "$($pnpWorkbook.Workbook.Names["group_gg_vra_orchestrator_viewers"].Value)"
            $displayName                    = $pnpWorkbook.Workbook.Names["xreg_vra_org_name"].Value
            $vraUser                        = $pnpWorkbook.Workbook.Names["local_configadmin_username"].Value
            $vraPass                        = $pnpWorkbook.Workbook.Names["local_configadmin_password"].Value
            $vraVsphereRoleName             = $pnpWorkbook.Workbook.Names["xreg_vra_vsphere_role_name"].Value
            $vroVsphereRoleName             = $pnpWorkbook.Workbook.Names["xreg_vro_vsphere_role_name"].Value
            $domainBindUser                 = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
            $domainBindPass                 = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value
            $vraServiceAccount              = $pnpWorkbook.Workbook.Names["user_svc_vra_vsphere"].Value
            $vroServiceAccount              = $pnpWorkbook.Workbook.Names["user_svc_vro_vsphere"].Value
            $nsxEdgeVMFolder                = $pnpWorkbook.Workbook.Names["wld_user_edge_vm_folder"].Value
            $localDatastoreFolder           = $pnpWorkbook.Workbook.Names["wld_vra_storage_folder"].Value
            $readOnlyDatastoreFolder        = $pnpWorkbook.Workbook.Names["wld_vra_storage_readonly_folder"].Value
            $nsxVraUser                     = $pnpWorkbook.Workbook.Names["user_svc_vra_nsx"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $capabilityTag                  = $pnpWorkbook.Workbook.Names["xreg_vra_cloud_account_cloud_capability_tag"].Value
            $tagKey                         = $pnpWorkbook.Workbook.Names["xreg_vra_cloud_account_region_capability_tag"].Value.Split(":")[-0]
            $tagValue                       = $pnpWorkbook.Workbook.Names["xreg_vra_cloud_account_region_capability_tag"].Value.Split(":")[-1]
            $smtpServer                     = $pnpWorkbook.Workbook.Names["smtp_server"].Value
            $emailAddress                   = $pnpWorkbook.Workbook.Names["xreg_vra_smtp_sender_email_address"].Value
            $senderName                     = $pnpWorkbook.Workbook.Names["xreg_vra_smtp_sender_name"].Value
            $vcUser                         = $pnpWorkbook.Workbook.Names["user_svc_vro_vsphere"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $vcPass                         = $pnpWorkbook.Workbook.Names["svc_vro_vsphere_password"].Value

            $vraPem = $certificateAlias + ".2.chain.pem"
            if (!(Test-Path ($filePath + "\" + $vraPem) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $vraPem, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found Certificate File: $vraPem" -colour Green
            }

            $rootCer = "Root64.cer"
            if (!(Test-Path ($filePath + "\" + $rootCer) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $rootCer, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found Certificate File: $rootCer" -colour Green
            }

            $vraVsphereTemplate = ($templatePath + "automation-assembler-vsphere-integration.role")
            if (!(Test-Path ($vraVsphereTemplate) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find vSphere Role Template: $vraVsphereTemplate, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found vSphere Role Template: $vraVsphereTemplate" -colour Green
            }

            $vroVsphereTemplate = ($templatePath + "automation-orchestrator-vsphere-integration.role")
            if (!(Test-Path ($vroVsphereTemplate) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find vSphere Role Template: $vroVsphereTemplate, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found vSphere Role Template: $vroVsphereTemplate" -colour Green
            }

            # Add the vRealize Automation License to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Add the $automationProductName License to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -license $licenseKey -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the Certificate for vRealize Automation to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Import the Certificate for $automationProductName to $lcmProductName"
            $StatusMsg = Import-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -certChainPath ($filePath + "\" + $vraPem) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add the vRealize Automation Password to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Add the $automationProductName Password to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $rootPasswordAlias -password $rootPassword -userName $rootUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $xintPasswordAlias -password $xintPassword -userName $xintUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Deploy vRealize Automation by Using vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Attempting to Deploy $automationProductName by Using $lcmProductName"
            $StatusMsg = New-vRADeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -workbook $workbook -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta; $ErrorMsg = $null} if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder for the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Attempting to Create a Virtual Machine and Template Folder for the $automationProductName Cluster Appliances"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -folderName $vraFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Move the vRealize Automation Cluster Virtual Machines to the Dedicated Folder
            Write-LogMessage -Type INFO -Message "Attempting to Move the $automationProductName Cluster Appliances to the Dedicated Folder"
            $StatusMsg = Move-VMtoFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -vmList $vraVmList -folder $vraFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL" ) { Write-LogMessage -Type INFO -Message "Relocating $automationProductName Cluster Appliances to Dedicated Folder: SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder and a Resource Pool for the vRealize Automation-Managed Workloads on the VI Workload Domain vCenter Server
            Write-LogMessage -Type INFO -Message "Attempting to Create a Virtual Machine and Template Folder and a Resource Pool for the $automationProductName-Managed Workloads on the VI Workload Domain vCenter Server"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -folderName $workloadFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-ResourcePool -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -resourcePoolName $workloadResource -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure a vSphere DRS Anti-Affinity Rule for the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Attempting to Configure a vSphere DRS Anti-Affinity Rule for the $automationProductName Cluster Appliances"
            $StatusMsg = Add-AntiAffinityRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -ruleName $antiAffinityRuleName -antiAffinityVMs $antiAffinityVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a VM Group and Define the Startup Order of the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Attempting to Create a VM Group and Define the Startup Order of the $automationProductName Cluster Appliances"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -drsGroupName $drsGroupNameVra -drsGroupVMs $drsGroupVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -ruleName $ruleName -vmGroup  $drsGroupNameVra -dependOnVmGroup $drsGroupNameWsa -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            if ($stretchedCluster -eq "Include") {
                # Add the vRealize Automation Cluster Virtual Machines to the First Availability Zone VM Group
                Write-LogMessage -Type INFO -Message "Attempting to Add the $automationProductName Cluster Appliances to the First Availability Zone VM Group"
                $StatusMsg = Add-VmGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -name $groupName -vmList $vraVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Configure the Organization Name for vRealize Automation
            Write-LogMessage -Type INFO -Message "Attempting to Configure the Organization Name for $automationProductName"
            $StatusMsg = Update-vRAOrganizationDisplayName -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -displayName $displayName -vraUser $vraUser -vraPass $vraPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Synchronize the Active Directory Groups for vRealize Automation in Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Attempting to Synchronize the Active Directory Groups for $automationProductName in Workspace ONE Access"
            $StatusMsg = Add-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass  $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Assign Organization and Service Roles to the Groups for vRealize Automation
            Write-LogMessage -Type INFO -Message "Attempting to Assign Organization and Service Roles to the Groups for $automationProductName"
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $orgOwner -orgRole org_owner -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $cloudAssemblyAdmins -orgRole org_member -serviceRole automationservice:cloud_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $cloudAssemblyUsers -orgRole org_member -serviceRole automationservice:user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $cloudAssemblyViewers -orgRole org_member -serviceRole automationservice:viewer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $serviceBrokerAdmins -orgRole org_member -serviceRole catalog:admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $serviceBrokerUsers -orgRole org_member -serviceRole catalog:user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $serviceBrokerViewers -orgRole org_member -serviceRole catalog:viewer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $orchestratorAdmins -orgRole org_member -serviceRole orchestration:admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $orchestratorDesigners -orgRole org_member -serviceRole orchestration:designer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRAGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -displayName $orchestratorViewers -orgRole org_member -serviceRole orchestration:viewer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Define Custom Roles in vSphere for vRealize Automation and vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Attempting to Define Custom Roles in vSphere for $automationProductName and $orchestratorProductName"
            $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -roleName $vraVsphereRoleName -template $vraVsphereTemplate -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -roleName $vroVsphereRoleName -template $vroVsphereTemplate -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Service Account Permissions for the vRealize Automation and vRealize Orchestrator Integrations to vSphere
            Write-LogMessage -Type INFO -Message "Attempting to Configure Service Account Permissions for the $automationProductName and $orchestratorProductName Integrations to vSphere"
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $domain -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vraServiceAccount -role $vraVsphereRoleName -propagate true -type user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red } 
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $domain -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vroServiceAccount -role $vroVsphereRoleName -propagate true -type user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to the Management Domain
            Write-LogMessage -Type INFO -Message "Attempting to Restrict the $automationProductName and $orchestratorProductName Service Accounts Access to the Management Domain"
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $mgmtSddcDomainName -principal $vraServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg -Colour Green" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $mgmtSddcDomainName -principal $vroServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder for the vRealize Automation Workload Virtual Machines
            Write-LogMessage -Type INFO -Message "Attempting to Create a Virtual Machine and Template Folder for the $automationProductName Workload Virtual Machines"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -folderName $nsxEdgeVMFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    
            # Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to Virtual Machine and Datastore Folders in the VI Workload Domain
            Write-LogMessage -Type INFO -Message "Attempting to Restrict the $automationProductName and $orchestratorProductName Service Accounts Access to Virtual Machine and Datastore Folders in the VI Workload Domain"
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $nsxEdgeVMFolder -folderType "VM" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $localDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $readOnlyDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $nsxEdgeVMFolder -folderType "VM" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $localDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $wldSddcDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $readOnlyDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Service Account Permissions for the vRealize Automation to NSX-T Data Center Integration on the VI Workload Domain NSX Manager Cluster
            Write-LogMessage -Type INFO -Message "Attempting to Configure Service Account Permissions for the $automationProductName to NSX-T Data Center Integration on the VI Workload Domain NSX Manager Cluster"
            $StatusMsg = Add-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -type user -principal $nsxVraUser -role enterprise_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add Cloud Accounts for the VI Workload Domains to vRealize Automation
            Write-LogMessage -Type INFO -Message "Attempting to Add Cloud Accounts for the VI Workload Domains to $automationProductName"
            $StatusMsg = New-vRACloudAccount -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -vraUser $vraUser -vraPass $vraPass -capabilityTab $capabilityTag -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure the Cloud Zones in vRealize Automation
            Write-LogMessage -Type INFO -Message "Attempting to Configure the Cloud Zones in $automationProductName"
            $StatusMsg = Update-vRACloudAccountZone -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -vraUser $vraUser -vraPass $vraPass -tagKey $tagKey -tagValue $tagValue -folder $workloadFolder -resourcePool $workloadResource -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Email Alerts in Service Broker
            Write-LogMessage -Type INFO -Message "Attempting to Configure Email Alerts in Service Broker"
            $StatusMsg = Add-vRANotification -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -smtpServer $smtpServer -emailAddress $emailAddress -sender $senderName -connection NONE -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the Trusted Certificate into vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Attempting to Import the Trusted Certificates into $orchestratorProductName"
            $StatusMsg = Add-vROTrustedCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -certFile ($filePath + "\" + $rootCer) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Add the VI Workload Domain vCenter Server to vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Attempting to Add the VI Workload Domain vCenter Server to $orchestratorProductName"
            $StatusMsg = Add-vROvCenterServer -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -vraUser $vraUser -vraPass $vraPass -vcUser $vcUser -vcPass $vcPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Deploying $automationProductName Based on $solutionName" -Colour Yellow