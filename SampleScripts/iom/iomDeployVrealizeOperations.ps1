# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-12-14
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-02-16)   - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-04)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Deploy vRealize Operations Manager for Intelligent Operations Management

    .DESCRIPTION
    The iomDeployVrealizeOperations.ps1 provides a single script to deploy and configure vRealize Operations Manager
    as defined by the Intelligent Operations Management Validated Solution

    .EXAMPLE
    iomDeployVrealizeOperations.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment and configure of vRealize Operations Manager using the parameters provided within the Planning and Preparation Workbook

    .EXAMPLE
    iomDeployVrealizeOperations.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs -nested
    This example performs a minimal footprint deployment and configuration of vRealize Operations Manager using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath,
    [Parameter (Mandatory = $false)] [ValidateNotNullOrEmpty()] [Switch]$nested
)

# Define Reusable Parameters
$solutionName               = "Intelligent Operations Management for VMware Cloud Foundation"
$operationsProductName      = "vRealize Operations Manager"
$lcmProductName             = "vRealize Suite Lifecycle Manager"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying $operationsProductName Based on $solutionName" -Colour Yellow
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

            $sddcDomainName                 = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $licenseAlias                   = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) {  "vRealize Suite 2019" } else { "vRealize Operations Manager" }
            $licenseKey                     = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) { $pnpWorkbook.Workbook.Names["vrs_license"].Value } else { $pnpWorkbook.Workbook.Names["vrops_license"].Value }
            $certificateAlias               = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_hostname"].Value
            $rootPasswordAlias              = $pnpWorkbook.Workbook.Names["xreg_vrops_root_password_alias"].Value
            $rootPassword                   = $pnpWorkbook.Workbook.Names["xreg_vrops_root_password"].Value
            $rootUserName                   = "root"
            $xintPasswordAlias              = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password_alias"].Value
            $xintPassword                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            $xintUserName                   = $pnpWorkbook.Workbook.Names["vrslcm_xreg_admin_username"].Value
            $vropsFolder                    = $pnpWorkbook.Workbook.Names["xreg_vrops_vm_folder"].Value
            $vropsrcFolder                  = $pnpWorkbook.Workbook.Names["region_vrops_collector_vm_folder"].Value
            if (!$PsBoundParameters.ContainsKey("nested")) {
                $vropsVmList                = $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodec_hostname"].Value
            } else {
                $vropsVmList                = $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_hostname"].Value
            }
            $vropsrcVmList                  = $pnpWorkbook.Workbook.Names["region_vropsca_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["region_vropscb_hostname"].Value
            $vropsAntiAffinityRuleName      = "anti-affinity-rule-vrops"
            $vropsAntiAffinityVMs           = $vropsVmList
            $vropsrcAntiAffinityRuleName    = "anti-affinity-rule-vropsrc"
            $vropsrcAntiAffinityVMs         = $vropsrcVmList
            $ruleNameVrops                  = "vm-vm-rule-wsa-vrops"
            $drsGroupNameVrops              = $pnpWorkbook.Workbook.Names["xreg_vrops_vm_group_name"].Value
            $drsGroupNameWsa                = $pnpWorkbook.Workbook.Names["xreg_wsa_vm_group_name"].Value
            $drsGroupVMsVrops               = $vropsVmList
            $ruleNameVropsrc                = "vm-vm-rule-vrops-vropsrc"
            $drsGroupNameVropsrc            = $pnpWorkbook.Workbook.Names["region_vrops_collector_group_name"].Value
            $drsGroupVMsVropsrc             = $vropsrcVmList
            $vmList                         = $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodec_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["region_vropsca_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["region_vropscb_hostname"].Value
            $groupName                      = $pnpWorkbook.Workbook.Names["mgmt_cluster"].Value + "_primary-az-vmgroup"
            $stretchedCluster               = $pnpWorkbook.Workbook.Names["mgmt_stretched_cluster_chosen"].Value
            $collectorGroupName             = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value + "-collect-group"
            $currency                       = $pnpWorkbook.Workbook.Names["xreg_vrops_currency"].Value
            $wsaFqdn                        = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value + "." + $pnpWorkbook.Workbook.Names["parent_dns_zone"].Value
            $wsaUser                        = $pnpWorkbook.Workbook.Names["local_admin_username"].Value
            $wsaPass                        = $pnpWorkbook.Workbook.Names["local_admin_password"].Value
            $domain                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $bindUser                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value
            $bindPass                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $baseDnGroup                    = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value
            $adGroups                       = "$($pnpWorkbook.Workbook.Names["group_gg_vrops_admins"].Value)","$($pnpWorkbook.Workbook.Names["group_gg_vrops_content_admins"].Value)","$($pnpWorkbook.Workbook.Names["group_gg_vrops_read_only"].Value)"
            $smtpServer                     = $pnpWorkbook.Workbook.Names["smtp_server"].Value
            $smtpPort                       = $pnpWorkbook.Workbook.Names["smtp_server_port"].Value
            $senderAddress                  = $pnpWorkbook.Workbook.Names["xreg_vrops_smtp_sender_email_address"].Value
            $vropsAdminGroup                = $pnpWorkbook.Workbook.Names["group_gg_vrops_admins"].Value
            $vropsContentAdminGroup         = $pnpWorkbook.Workbook.Names["group_gg_vrops_content_admins"].Value
            $vropsReadOnlyGroup             = $pnpWorkbook.Workbook.Names["group_gg_vrops_read_only"].Value
            
            $vropsPem                       = $certificateAlias + ".2.chain.pem"
            if (!(Test-Path ($filePath + "\" + $vropsPem) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $vropsPem, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found Certificate File: $vropsPem" -colour Green
            }
        
            # Add the vRealize Operations Manager License to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the $operationsProductName License to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -license $licenseKey -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the Certificate for vRealize Operations Manager to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Import the Certificate for $operationsProductName to $lcmProductName"
            $StatusMsg = Import-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -certChainPath ($filePath + "\" + $vropsPem) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add the vRealize Operations Manager Password to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the $operationsProductName Password to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $rootPasswordAlias -password $rootPassword -userName $rootUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $xintPasswordAlias -password $xintPassword -userName $xintUserName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Deploy vRealize Operations Manager by Using vRealize Suite Lifecycle Manager
            if (!$PsBoundParameters.ContainsKey("nested")) {
                Write-LogMessage -Type INFO -Message "Deploy $operationsProductName Using $lcmProductName"
                $StatusMsg = New-vROPSDeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -workbook $workbook -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg -contains "FAILED" ) { Write-LogMessage -Type ERROR -Message "$StatusMsg"; Break } else { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta; $ErrorMsg = $null } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            } else {
                Write-LogMessage -Type INFO -Message "Deploy $operationsProductName Using $lcmProductName"
                $StatusMsg = New-vROPSDeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -workbook $workbook -monitor -nested -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg -contains "FAILED" ) { Write-LogMessage -Type ERROR -Message "$StatusMsg"; Break } else { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta; $ErrorMsg = $null } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Create Virtual Machine and Template Folders for the vRealize Operations Manager Virtual Machines
            Write-LogMessage -Type INFO -Message "Create Virtual Machine and Template Folders for the $operationsProductName Appliances"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -folderName $vropsFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -folderName $vropsrcFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Move the vRealize Operations Manager Virtual Machines to the Dedicated Folders
            Write-LogMessage -Type INFO -Message "Move the vRealize Operations Appliances to the Dedicated Folders"
            $StatusMsg = Move-VMtoFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -vmList $vropsVmList -folder $vropsFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL") { Write-LogMessage -Type INFO -Message "Relocating $operationsProductName Cluster Appliances to Dedicated Folder: SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Move-VMtoFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -vmList $vropsrcVmList -folder $vropsrcFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL") { Write-LogMessage -Type INFO -Message "Relocating $operationsProductName Collector Appliances to Dedicated Folder: SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure vSphere DRS Anti-Affinity Rules for the vRealize Operations Manager Virtual Machines
            Write-LogMessage -Type INFO -Message "Configure vSphere DRS Anti-Affinity Rules for the $operationsProductName Appliances"
            $StatusMsg = Add-AntiAffinityRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $vropsAntiAffinityRuleName -antiAffinityVMs $vropsAntiAffinityVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-AntiAffinityRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $vropsrcAntiAffinityRuleName -antiAffinityVMs $vropsrcAntiAffinityVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a VM Group and Define the Startup Order of the vRealize Operations Manager Analytics Cluster Virtual Machines
            Write-LogMessage -Type INFO -Message "Create a VM Group and Define the Startup Order of the $operationsProductName Analytics Cluster Appliances"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVrops -drsGroupVMs $drsGroupVMsVrops -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleNameVrops -vmGroup $drsGroupNameVrops -dependOnVmGroup $drsGroupNameWsa -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a VM Group and Define the Startup Order of the vRealize Operations Manager Remote Collector Virtual Machines
            Write-LogMessage -Type INFO -Message "Create a VM Group and Define the Startup Order of the $operationsProductName Collector Appliances"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVropsrc -drsGroupVMs $drsGroupVMsVropsrc -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleNameVropsrc -vmGroup $drsGroupNameVropsrc -dependOnVmGroup $drsGroupNameVrops -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            if ($stretchedCluster -eq "Include") {
                # Add the vRealize Operations Manager Virtual Machines to the First Availability Zone VM Group
                Write-LogMessage -Type INFO -Message "Add the $operationsProductName Appliances to the First Availability Zone VM Group"
                $StatusMsg = Add-VmGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -name $groupName -vmList $vmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Group the vRealize Operations Manager Collector Nodes
            Write-LogMessage -Type INFO -Message "Group the $operationsProductName Collector Nodes"
            $StatusMsg = Add-vROPSGroupRemoteCollectors -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Synchronize the Active Directory Groups for vRealize Operations Manager in Workspace ONE Access 
            Write-LogMessage -Type INFO -Message "Synchronize the Active Directory Groups for $operationsProductName in Workspace ONE Access"
            $StatusMsg = Add-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass  $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure User Access in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Configure User Access in $operationsProductName"
            $StatusMsg = Import-vROPSUserGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -groupName $vropsAdminGroup -role Administrator -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Import-vROPSUserGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -groupName $vropsContentAdminGroup -role ContentAdmin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Import-vROPSUserGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -groupName $vropsReadOnlyGroup -role ReadOnly -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Set the Currency for Cost Calculation in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Set the Currency for Cost Calculation in $operationsProductName"
            $StatusMsg = Add-vROPSCurrency -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -currency $currency -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Configure Email Alert Plug-in Settings for vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Configure Email Alert Plug-in Settings for $operationsProductName"
            $StatusMsg = Add-vROPSAlertPluginEmail -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -pluginName "Email-Alert-Plugin" -smtpServer $smtpServer -smtpPort $smtpPort -senderAddress $senderAddress -secureConnection true -protocol TLS -authentication false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red } 
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Deploying $operationsProductName Based on $solutionName" -Colour Yellow