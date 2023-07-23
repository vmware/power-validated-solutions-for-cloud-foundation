# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-11-27
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-01-05)   - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16)   - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-04)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Deploy vRealize Log Insight for Intelligent Logging and Analytics

    .DESCRIPTION
    The ilaDeployVrealizeLogInsight.ps1 provides a single script to deploy and configure vRealize Log Insight as
    defined by the Intelligent Logging and Analytics Validated Solution

    .EXAMPLE
    ilaDeployVrealizeLogInsight.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment and configure of vRealize Log Insight using the parameters provided within the Planning and Preparation Workbook
#>

# Define Reusable Parameters
$solutionName       = "Intelligent Logging and Analytics for VMware Cloud Foundation"
$logsProductName    = "vRealize Log Insight"
$lcmProductName     = "vRealize Suite Lifecycle Manager"

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying $logsProductName Based on $solutionName" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path: $logfile"
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
            $licenseAlias                   =  "vRealize Log Insight"
            $licenseKey                     = if ($pnpWorkbook.Workbook.Names["vrs_license"].Value) { $pnpWorkbook.Workbook.Names["vrs_license"].Value } else { $pnpWorkbook.Workbook.Names["vrli_license"].Value }
            $certificateAlias               = $pnpWorkbook.Workbook.Names["region_vrli_virtual_hostname"].Value
            $passwordAlias                  = $pnpWorkbook.Workbook.Names["region_vrli_admin_password_alias"].Value
            $password                       = $pnpWorkbook.Workbook.Names["region_vrli_admin_password"].Value
            $userName                       = "admin"
            $vrliFolder                     = $pnpWorkbook.Workbook.Names["region_vrli_vm_folder"].Value
            $vrliVmList                     = $pnpWorkbook.Workbook.Names["region_vrli_nodea_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["region_vrli_nodeb_hostname"].Value + "," + $pnpWorkbook.Workbook.Names["region_vrli_nodec_hostname"].Value
            $antiAffinityRuleName           = $pnpWorkbook.Workbook.Names["region_vrli_anti_affinity_rule_name"].Value
            $antiAffinityVMs                = $vrliVmList
            $ruleName                       = "vm-vm-rule-wsa-vrli"
            $drsGroupNameVrli               = $pnpWorkbook.Workbook.Names["region_vrli_vm_group_name"].Value
            $drsGroupNameWsa                = $pnpWorkbook.Workbook.Names["xreg_wsa_vm_group_name"].Value
            $drsGroupVMs                    = $vrliVmList
            $groupName                      = $pnpWorkbook.Workbook.Names["mgmt_cluster"].Value + "_primary-az-vmgroup"
            $stretchedCluster               = $pnpWorkbook.Workbook.Names["mgmt_stretched_cluster_chosen"].Value
            $vmList                         = $vrliVmList
            $smtpServer                     = $pnpWorkbook.Workbook.Names["smtp_server"].Value
            $port                           = $pnpWorkbook.Workbook.Names["smtp_server_port"].Value
            $sender                         = $pnpWorkbook.Workbook.Names["xreg_vra_smtp_sender_email_address"].Value
            $smtpUser                       = $pnpWorkbook.Workbook.Names["smtp_sender_username"].Value
            $smtpPass                       = $pnpWorkbook.Workbook.Names["smtp_sender_password"].Value
            $emailAddress                   = $pnpWorkbook.Workbook.Names["region_vrli_admin_email"].Value
            $retentionNotificationDays      = $pnpWorkbook.Workbook.Names["region_vrli_log_retention_notification"].Value.Split(" ")[0]
            $retentionInterval              = $pnpWorkbook.Workbook.Names["region_vrli_log_retention_notification"].Value.Split(" ")[1]
            $retentionPeriodDays            = $pnpWorkbook.Workbook.Names["region_vrli_log_retention_period"].Value
            $archiveLocation                = "nfs://" + $pnpWorkbook.Workbook.Names["region_vrli_nfs_server"].Value + "/" + $pnpWorkbook.Workbook.Names["region_vrli_nfs_share"].Value
            $wsaFqdn                        = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaUser                        = "admin"
            $wsaPass                        = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $domain                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $bindUser                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value
            $bindPass                       = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $baseDnGroup                    = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value
            $vrliAdminGroup                 = $pnpWorkbook.Workbook.Names["group_gg_vrli_admins"].Value
            $vrliUserGroup                  = $pnpWorkbook.Workbook.Names["group_gg_vrli_users"].Value
            $vrliViewerGroup                = $pnpWorkbook.Workbook.Names["group_gg_vrli_viewers"].Value
            $adGroups                       = "$vrliAdminGroup","$vrliUserGroup","$vrliViewerGroup"

            $vrliPem = $certificateAlias + ".2.chain.pem"
            if (!(Test-Path ($filePath + "\" + $vrliPem))) {
                Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $vrliPem, check -filePath value provided and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found Certificate File: $vrliPem" -colour Green
            }

            # Add vRealize Log Insight License to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the $logsProductName License to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerLicense -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $licenseAlias -license $licenseKey -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Import the vRealize Log Insight Certificate to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Import the $logsProductName Certificate to $lcmProductName"
            $StatusMsg = Import-vRSLCMLockerCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -certificateAlias $certificateAlias -certChainPath ($filePath + "\" + $certificateAlias + ".2.chain.pem") -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add the vRealize Log Insight Admin Password to vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Add the $logsProductName Admin Password to $lcmProductName"
            $StatusMsg = New-vRSLCMLockerPassword -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -alias $passwordAlias -password $password -userName $userName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Deploy vRealize Log Insight by Using vRealize Suite Lifecycle Manager
            Write-LogMessage -Type INFO -Message "Deploy $logsProductName by Using $lcmProductName"
            $StatusMsg = New-vRLIDeployment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -workbook $workbook -monitor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta; $ErrorMsg = $null } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            if ( $StatusMsg -match "FAILED" ) { Break }

            # Create Virtual Machine and Template Folder for vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Create Virtual Machine and Template Folder for $logsProductName"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -folderName $vrliFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Move the vRealize Log Insight Virtual Machines to the Dedicated Folder
            Write-LogMessage -Type INFO -Message "Move the $logsProductName Appliances to the Dedicated Folder"
            $StatusMsg = Move-VMtoFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -vmList $vrliVmList -folder $vrliFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL" ) { Write-LogMessage -Type INFO -Message "Relocating $logsProductName Cluster Appliances to Dedicated Folder: SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure a vSphere DRS Anti-Affinity Rule for vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Configure a vSphere DRS Anti-Affinity Rule for $logsProductName"
            $StatusMsg = Add-AntiAffinityRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $antiAffinityRuleName -antiAffinityVMs $antiAffinityVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Create a VM Group and Define the Startup Order of the vRealize Log Insight Cluster
            Write-LogMessage -Type INFO -Message "Create a VM Group and Define the Startup Order of the $logsProductName Cluster"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -drsGroupName $drsGroupNameVrli -drsGroupVMs $drsGroupVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-VmStartupRule -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -ruleName $ruleName -vmGroup $drsGroupNameVrli -dependOnVmGroup $drsGroupNameWsa -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            if ($stretchedCluster -eq "Include") {
                # Add the vRealize Log Insight Virtual Machines to the First Availability Zone VM Group
                Write-LogMessage -Type INFO -Message "Add the $logsProductName Appliances to the First Availability Zone VM Group"
                $StatusMsg = Add-VmGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -name $groupName -vmList $vmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Configure SMTP for vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Configure SMTP for $logsProductName"
            $StatusMsg = Add-vRLISmtpConfiguration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -smtpServer $smtpServer -port $port -sender $sender -smtpUser $smtpUser -smtpPass $smtpPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure Log Retention and Archiving for vRealize Log Insight
            if (!($archiveLocation -match "Value Missing")) {
                Write-LogMessage -Type INFO -Message "Configure Log Retention and Archiving for $logsProductName"
                $StatusMsg = Add-vRLILogArchive -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -emailAddress $emailAddress -retentionNotificationDays $retentionNotificationDays -retentionInterval $retentionInterval -retentionPeriodDays $retentionPeriodDays -archiveLocation $archiveLocation -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }
            
            # Enable Authentication for vRealize Log Insight by Using Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Enable Authentication for $logsProductName by Using Workspace ONE Access"
            $StatusMsg = Add-vRLIAuthenticationWSA -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaFqdn $wsaFqdn -wsaUser $wsaUser -wsaPass $wsaPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Sync Active Directory Groups to Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Sync Active Directory Groups to Workspace ONE Access"
            $StatusMsg = Add-WorkspaceOneDirectoryGroup -server $wsaFqdn -user $wsaUser -pass $wsaPass -domain $domain -bindUser $bindUser -bindPass $bindPass -baseDnGroup $baseDnGroup -adGroups $adGroups -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Assign vRealize Log Insight Roles to Active Directory Groups
            Write-LogMessage -Type INFO -Message "Assign $logsProductName Roles to Active Directory Groups"
            $StatusMsg = Add-vRLIAuthenticationGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -group $vrliAdminGroup -role 'Super Admin' -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRLIAuthenticationGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -group $vrliUserGroup -role 'User' -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vRLIAuthenticationGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domain -group $vrliViewerGroup -role 'View Only Admin' -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Deploying $logsProductName Based on $solutionName" -Colour Yellow