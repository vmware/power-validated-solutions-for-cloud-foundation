# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   2022-10-06
    Copyright 2021-2022 VMware, Inc.
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

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying vRealize Automation Based on Private Cloud Automation for VMware Cloud Foundation" -Colour Yellow
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

            $licenseAlias                   = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) { "vRealize Suite 2019" } else { "vRealize Automation" }
            $licenseKey                     = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) { $pnpWorkbook.Workbook.Names["vrs_license"].Value } else { $pnpWorkbook.Workbook.Names["vra_license"].Value }
            $certificateAlias               = $pnpWorkbook.Workbook.Names["xreg_vra_virtual_hostname"].Value
            $rootPasswordAlias              = $pnpWorkbook.Workbook.Names["xreg_vra_root_password_alias"].Value
            $rootPassword                   = $pnpWorkbook.Workbook.Names["xreg_vra_root_password"].Value
            $rootUserName                   = "root"
            $xintPasswordAlias              = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password_alias"].Value
            $xintPassword                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            $xintUserName                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_admin_username"].Value
            $sddcDomainName                 = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName              = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $vraFolder                      = $pnpWorkbook.Workbook.Names["xreg_vra_vm_folder"].Value
            $vraVmList                      = $pnpWorkbook.Workbook.Names["xreg_vra_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vra_nodeb_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vra_nodec_hostname"].Value
            $antiAffinityRuleName           = "anti-affinity-rule-vra"
            $antiAffinityVMs                = $vraVmList
            $drsGroupNameWsa                = $pnpWorkbook.Workbook.Names["xreg_wsa_vm_group_name"].Value
            $drsGroupNameVra                = $pnpWorkbook.Workbook.Names["xreg_vra_vm_group_name"].Value
            $ruleName                       = "vm-vm-rule-wsa-vra"
            $drsGroupVMs                    = $vraVmList
            $workloadFolder                 = $pnpWorkbook.Workbook.Names["wld_vra_vm_folder"].Value
            $workloadResource               = $pnpWorkbook.Workbook.Names["wld_vra_vm_rp"].Value
            $stretchedCluster               = $pnpWorkbook.Workbook.Names["mgmt_stretched_cluster_chosen"].Value
            $groupName                      = "primary_az_vmgroup"
            $wsaFqdn                        = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value + "." + $pnpWorkbook.Workbook.Names["parent_dns_zone"].Value
            $wsaUser                        = $pnpWorkbook.Workbook.Names["local_admin_username"].Value
            $wsaPass                        = $pnpWorkbook.Workbook.Names["local_admin_password"].Value
            $domain                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $domainAlias                    = $pnpWorkbook.Workbook.Names["region_ad_child_netbios"].Value
            $bindUser                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value
            $bindPass                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $baseDnGroup                    = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value
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
            $nsxEdgeVMFolder                = $pnpWorkbook.Workbook.Names["wld_vra_storage_folder"].Value
            $localDatastoreFolder           = $pnpWorkbook.Workbook.Names["wld_vra_storage_folder"].Value
            $readOnlyDatastoreFolder        = $pnpWorkbook.Workbook.Names["wld_vra_storage_readonly_folder"].Value
            $nsxVraUser                     = $pnpWorkbook.Workbook.Names["user_svc_vra_nsx"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $capabilityTag                  = $pnpWorkbook.Workbook.Names["xreg_vra_cloud_account_cloud_capability_tag"].Value
            $tagKey                         = "enabled"
            $tagValue                       = "true"
            $smtpServer                     = $pnpWorkbook.Workbook.Names["smtp_server"].Value
            $emailAddress                   = $pnpWorkbook.Workbook.Names["xreg_vra_smtp_sender_email_address"].Value
            $senderName                     = $pnpWorkbook.Workbook.Names["xreg_vra_smtp_sender_name"].Value
            $vcUser                         = $pnpWorkbook.Workbook.Names["user_svc_vro_vsphere"].Value + "@" + $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $vcPass                         = $pnpWorkbook.Workbook.Names["svc_vro_vsphere_password"].Value

            $vraPem = $certificateAlias + ".2.chain.pem"
            if (!(Test-Path ($filePath + "\" + $vraPem) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $vraPem, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $vraPem" }

            $rootCer = "Root64.cer"
            if (!(Test-Path ($filePath + "\" + $rootCer) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $rootCer, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $rootCer" }

            # Add the vRealize Automation License to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the vRealize Automation License to vRealize Suite Lifecycle Manager"
            $StatusMsg = New-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -license $licenseKey -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the Certificate for vRealize Automation to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Import the Certificate for vRealize Automation to vRealize Suite Lifecycle Manager"
            $StatusMsg = Import-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -certChainPath ($filePath + "\" + $vraPem) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add the vRealize Automation Password to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the vRealize Automation Password to vRealize Suite Lifecycle Manager"
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $rootPasswordAlias -password $rootPassword -userName $rootUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $xintPasswordAlias -password $xintPassword -userName $xintUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Deploy vRealize Automation by Using vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Deploy vRealize Automation by Using vRealize Suite Lifecycle Manager"
            $StatusMsg = New-vRADeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -workbook $workbook -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder for the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Create a Virtual Machine and Template Folder for the vRealize Automation Cluster Virtual Machines"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -folderName $vraFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Move the vRealize Automation Cluster Virtual Machines to the Dedicated Folder
            Write-LogMessage -Type INFO -Message "Move the vRealize Automation Cluster Virtual Machines to the Dedicated Folder"
            $StatusMsg = Move-VMtoFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -vmList $vraVmList -folder $vraFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL" ) { Write-LogMessage -Type INFO -Message "Relocating vRealize Automation Cluster Virtual Machines to Dedicated Folder: SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder and a Resource Pool for the vRealize Automation-Managed Workloads on the VI Workload Domain vCenter Server
            Write-LogMessage -Type INFO -Message "Create a Virtual Machine and Template Folder and a Resource Pool for the vRealize Automation-Managed Workloads on the VI Workload Domain vCenter Server"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -folderName $workloadFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-ResourcePool -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -resourcePoolName $workloadResource -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure a vSphere DRS Anti-Affinity Rule for the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Configure a vSphere DRS Anti-Affinity Rule for the vRealize Automation Cluster Virtual Machines"
            $StatusMsg = Add-AntiAffinityRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $antiAffinityRuleName -antiAffinityVMs $antiAffinityVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a VM Group and Define the Startup Order of the vRealize Automation Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Create a VM Group and Define the Startup Order of the vRealize Automation Cluster Virtual Machines"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVra -drsGroupVMs $drsGroupVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleName -vmGroup  $drsGroupNameVra -dependOnVmGroup $drsGroupNameWsa -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            if ($stretchedCluster -eq "Include") {
                # Add the vRealize Automation Cluster Virtual Machines to the First Availability Zone VM Group
                Write-LogMessage -Type INFO -Message "Add the vRealize Automation Cluster Virtual Machines to the First Availability Zone VM Group"
                $StatusMsg = Add-VmGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -name $groupName -vmList $vraVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Configure the Organization Name for vRealize Automation
            Write-LogMessage -Type INFO -Message "Configure the Organization Name for vRealize Automation"
            $StatusMsg = Update-vRAOrganizationDisplayName -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -displayName $displayName -vraUser $vraUser -vraPass $vraPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Synchronize the Active Directory Groups for vRealize Automation in Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Synchronize the Active Directory Groups for vRealize Automation in Workspace ONE Access"
            $StatusMsg = Add-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass  $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Assign Organization and Service Roles to the Groups for vRealize Automation
            # TODO: 

            # Define Custom Roles in vSphere for vRealize Automation and vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Define Custom Roles in vSphere for vRealize Automation and vRealize Orchestrator"
            $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -roleName $vraVsphereRoleName -template "F:\PowerValidatedSolutions\vSphereRoles\vra-vsphere-integration.role" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -roleName $vroVsphereRoleName -template "F:\PowerValidatedSolutions\vSphereRoles\vro-vsphere-integration.role" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Service Account Permissions for the vRealize Automation and vRealize Orchestrator Integrations to vSphere
            Write-LogMessage -Type INFO -Message "Configure Service Account Permissions for the vRealize Automation and vRealize Orchestrator Integrations to vSphere"
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vraServiceAccount -role $vraVsphereRoleName -propagate true -type user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red } 
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vroServiceAccount -role $vroVsphereRoleName -propagate true -type user -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to the Management Domain
            Write-LogMessage -Type INFO -Message "Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to the Management Domain"
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcDomainName -principal $vraServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcDomainName -principal $vroServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a Virtual Machine and Template Folder for the vRealize Automation Workload Virtual Machines
            Write-LogMessage -Type INFO -Message "Create a Virtual Machine and Template Folder for the vRealize Automation Workload Virtual Machines"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -folderName $nsxEdgeVMFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    
            # Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to Virtual Machine and Datastore Folders in the VI Workload Domain
            Write-LogMessage -Type INFO -Message "Restrict the vRealize Automation and vRealize Orchestrator Service Accounts Access to Virtual Machine and Datastore Folders in the VI Workload Domain"
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $nsxEdgeVMFolder -folderType "VM" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $localDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vraServiceAccount -role "NoAccess" -folderName $readOnlyDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $nsxEdgeVMFolder -folderType "VM" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $localDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainAlias -workloadDomain $sddcWldDomainName -principal $vroServiceAccount -role "NoAccess" -folderName $readOnlyDatastoreFolder -folderType "Datastore" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Service Account Permissions for the vRealize Automation to NSX-T Data Center Integration on the VI Workload Domain NSX Manager Cluster
            Write-LogMessage -Type INFO -Message "Configure Service Account Permissions for the vRealize Automation to NSX-T Data Center Integration on the VI Workload Domain NSX Manager Cluster"
            $StatusMsg = Add-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -type user -principal $nsxVraUser -role enterprise_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add Cloud Accounts for the VI Workload Domains to vRealize Automation
            Write-LogMessage -Type INFO -Message "Add Cloud Accounts for the VI Workload Domains to vRealize Automation"
            $StatusMsg = New-vRACloudAccount -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -vraUser $vraUser -vraPass $vraPass -capabilityTab $capabilityTag -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure the Cloud Zones in vRealize Automation
            Write-LogMessage -Type INFO -Message "Configure the Cloud Zones in vRealize Automation"
            $StatusMsg = Update-vRACloudAccountZone -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -vraUser $vraUser -vraPass $vraPass -tagKey $tagKey -tagValue $tagValue -folder $workloadFolder -resourcePool $workloadResource -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Email Alerts in Service Broker
            Write-LogMessage -Type INFO -Message "Configure Email Alerts in Service Broker"
            $StatusMsg = Add-vRANotification -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -smtpServer $smtpServer -emailAddress $emailAddress -sender $senderName -connection NONE -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the Trusted Certificate into vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Import the Trusted Certificates into vRealize Orchestrator"
            $StatusMsg = Add-vROTrustedCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vraUser $vraUser -vraPass $vraPass -certFile $rootCer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Add the VI Workload Domain vCenter Server to vRealize Orchestrator
            Write-LogMessage -Type INFO -Message "Add the VI Workload Domain vCenter Server to vRealize Orchestrator"
            $StatusMsg = Add-vROvCenterServer -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -vraUser $vraUser -vraPass $vraPass -vcUser $vcUser -vcPass $vcPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}