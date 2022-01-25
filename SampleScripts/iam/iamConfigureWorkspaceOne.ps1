<#
    .NOTES
    ===================================================================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   11/10/2021
    Copyright 2022 VMware, Inc.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-01-04) - Improved the connection handling when starting the script

    ===================================================================================================================

    .SYNOPSIS
    Configure Workspace ONE Access for Identity and Access Management

    .DESCRIPTION
    The iamConfigureWorkspaceOne.ps1 provides a single script to implement  the configuration of Workspace
    ONE Access as defined by the Identity and Access Management Validated Solution

    .EXAMPLE
    iamConfigureWorkspaceOne.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deploment and configuration of Workspace ONE Access using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying and Configuring Workspace ONE Access Based on Identity and Access Management for VMware Cloud Foundation" -Colour Yellow
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
            if ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.3.x") {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            }

            $domainFqdn                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $mgmtSddcDomainName                 = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $wsaFolder                          = $pnpWorkbook.Workbook.Names["mgmt_region_wsa_vm_folder"].Value
            $wsaIpAddress                       = $pnpWorkbook.Workbook.Names["region_wsa_ip"].Value
            $wsaGateway                         = $pnpWorkbook.Workbook.Names["reg_seg01_gateway_ip"].Value
            $wsaSubnetMask                      = $pnpWorkbook.Workbook.Names["reg_seg01_mask_overlay_backed"].Value
            $wsaOvaFile                         = "identity-manager-3.3.5.0-18049997_OVF10.ova"
            if (!(Test-Path ($filePath + "\" + $wsaOvaFile) )) { Write-LogMessage -Type ERROR -Message "Unable to Find OVA File: $wsaOvaFile, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found OVA File: $wsaOvaFile" }
            $wsaFqdn                            = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaHostname                        = $wsaFqdn.Split(".")[0]
            $drsGroupName                       = "sfo-m01-vm-group-wsa"
            $drsGroupVMs                        = "sfo-wsa01"
            $wsaAdminPassword                   = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $wsaRootPassword                    = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_root_password"].Value
            $wsaSshUserPassword                 = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_sshuser_password"].Value
            $smtpServerFqdn                     = $pnpWorkbook.Workbook.Names["smtp_server"].Value
            $smtpServerPort                     = $pnpWorkbook.Workbook.Names["smtp_server_port"].Value
            $smtpEmailAddress                   = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_notifications_address"].Value
            $baseGroupDn                        = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value 
            $baseUserDn                         = $pnpWorkbook.Workbook.Names["child_ad_users_ou"].Value
            $wsabindUserDn                      = "cn=" + $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_user"].Value + "," + $pnpWorkbook.Workbook.Names["child_ad_users_ou"].Value
            $wsabindUserPassword                = $pnpWorkbook.Workbook.Names["child_svc_wsa_ad_password"].Value
            $wsaSuperAdminGroup                 = $pnpWorkbook.Workbook.Names["group_child_gg_wsa_admins"].Value
            $wsaDirAdminGroup                   = $pnpWorkbook.Workbook.Names["group_child_gg_wsa_directory_admins"].Value
            $wsaReadOnlyGroup                   = $pnpWorkbook.Workbook.Names["group_child_gg_wsa_read_only"].Value
            $adGroups                           = "$($pnpWorkbook.Workbook.Names["group_gg_nsx_enterprise_admins"].Value)","$($pnpWorkbook.Workbook.Names["group_gg_nsx_network_admins"].Value)","$($pnpWorkbook.Workbook.Names["group_gg_nsx_auditors"].Value)","$wsaSuperAdminGroup","$wsaDirAdminGroup","$wsaReadOnlyGroup"
            $minLen                             = $pnpWorkbook.Workbook.Names["standalone_wsa_password_min_length"].Value
            $minLower                           = $pnpWorkbook.Workbook.Names["standalone_wsa_password_lowercase_chars"].Value
            $minUpper                           = $pnpWorkbook.Workbook.Names["standalone_wsa_password_uppercase_chars"].Value
            $minDigit                           = $pnpWorkbook.Workbook.Names["standalone_wsa_password_numerical_chars"].Value
            $minSpecial                         = $pnpWorkbook.Workbook.Names["standalone_wsa_password_special_chars"].Value
            $history                            = $pnpWorkbook.Workbook.Names["standalone_wsa_password_history"].Value
            $maxConsecutiveIdenticalCharacters  = $pnpWorkbook.Workbook.Names["standalone_wsa_password_consecutive_identical_chars"].Value
            $tempPasswordTtlInHrs               = $pnpWorkbook.Workbook.Names["standalone_wsa_password_temp_lifetime"].Value
            $maxPreviousPasswordCharactersReused    = "0"
            $passwordTtlInDays                      = "90"
            $notificationThresholdInDays            = "15"
            $notificationIntervalInDays             = "3"
            $numAttempts                            = $pnpWorkbook.Workbook.Names["standalone_wsa_password_failed_attempts"].Value
            $attemptInterval                        = $pnpWorkbook.Workbook.Names["standalone_wsa_password_failed_auth_attempts_interval"].Value
            $unlockInterval                         = $pnpWorkbook.Workbook.Names["standalone_wsa_password_account_lockdown_duration"].Value

            $rootCa                             = "Root64.cer"
            if (!(Test-Path ($filePath + "\" + $rootCa) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $rootCa, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $rootCa" }
            $wsaCertKey                         = $wsaHostname + ".key"
            if (!(Test-Path ($filePath + "\" + $wsaCertKey) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $wsaCertKey, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $wsaCertKey" }
            $wsaCert                            = $wsaHostname + ".1.cer"
            if (!(Test-Path ($filePath + "\" + $wsaCert) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $wsaCert, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $wsaCert" }

            # Attempting to Create Virtual Machine and Template Folder for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Create Virtual Machine and Template Folder for the Standalone Workspace ONE Access Instance"
            $StatusMsg = Add-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -folderName $wsaFolder -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg"; $ErrorMsg = '' } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Deploy the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Deploy the Standalone Workspace ONE Access Instance"
            Write-LogMessage -Type INFO -Message "Deploying the Workspace ONE Access OVA"
            $StatusMsg = Install-WorkspaceOne -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaFqdn $wsaFqdn -wsaIpAddress $wsaIpAddress -wsaGateway $wsaGateway -wsaSubnetMask $wsaSubnetMask -wsaFolder $wsaFolder -wsaOvaPath ($filePath + "\" + $wsaOvaFile) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL") { Write-LogMessage -Type INFO -Message "Deploying $wsaFqdn using $($filePath + "\" + $wsaOvaFile): SUCCESSFUL"; $ErrorMsg = '' } elseif ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            if (!(Test-Connection -ComputerName ($wsaFqdn) -Quiet -Count 1)) {
                Write-LogMessage -Type INFO -Message "Going to Sleep for 10 mins Waiting for Workspace ONE Access to Start all Services"
                Start-Sleep 600
            }

            # Attempting to Create a VM Group for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Create a VM Group for the Standalone Workspace ONE Access Instance"
            $StatusMsg = Add-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -drsGroupName $drsGroupName -drsGroupVMs $drsGroupVMs -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Perform Initial Configuration of Workspace ONE Access Virtual Appliance
            Write-LogMessage -Type INFO -Message "Attempting to Perform Initial Configuration of Workspace ONE Access Virtual Appliance"
            $StatusMsg = Initialize-WorkspaceOne -wsaFqdn $wsaFqdn -adminPass $wsaAdminPassword -rootPass $wsaRootPassword -sshUserPass $wsaSshUserPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure NTP Server on Workspace ONE Access Appliance
            Write-LogMessage -Type INFO -Message "Attempting to Configure NTP Server on Workspace ONE Access Appliance" 
            $StatusMsg = Set-WorkspaceOneNtpConfig -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaFqdn $wsaFqdn -rootPass $wsaRootPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Replace the Certificate of the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Replace the Certificate of the Standalone Workspace ONE Access Instance"
            $StatusMsg = Install-WorkspaceOneCertificate -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaFqdn $wsaFqdn -rootPass $wsaRootPassword -sshUserPass $wsaSshUserPassword -rootCa ($filePath + "\" + $rootCa) -wsaCertKey ($filePath + "\" + $wsaCertKey) -wsaCert ($filePath + "\" + $wsaCert) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg -match "SUCCESSFUL") { Write-LogMessage -Type INFO -Message "$StatusMsg"; Write-LogMessage -Type INFO -Message "Waiting for Standalone Workspace ONE Access Instance Services to Restart"; Start-Sleep 200 } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure SMTP on the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Configure SMTP on the Standalone Workspace ONE Access Instance"
            $StatusMsg = Set-WorkspaceOneSmtpConfig -server $wsaFqdn -user admin -pass $wsaAdminPassword -smtpFqdn $smtpServerFqdn -smtpPort $smtpServerPort -smtpEmail $smtpEmailAddress -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure Identity Source for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Configure Identity Source for the Standalone Workspace ONE Access Instance"
            $StatusMsg = Add-WorkspaceOneDirectory -server $wsaFqdn -user admin -pass $wsaAdminPassword -domain $domainFqdn -baseDnUser $baseUserDn -baseDnGroup $baseGroupDn -bindUserDn $wsaBindUserDn -bindUserPass $wsaBindUserPassword -adGroups $adGroups -protocol ldaps -certificate ($filePath + "\" + $rootCa) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg"; Write-LogMessage -Type INFO -Message "Going to Sleep for 60 seconds to allow Workspace ONE Access to syncronize with Active Directory"; Start-Sleep 60 } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure Local Password Policy for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Configure Local Password Policy for the Standalone Workspace ONE Access Instance"
            Request-WSAToken -fqdn $wsaFqdn -user admin -pass $wsaAdminPassword | Out-Null
            $StatusMsg = Set-WSAPasswordPolicy -minLen $minLen -minLower $minLower -minUpper $minUpper -minDigit $minDigit -minSpecial $minSpecial -history $history -maxConsecutiveIdenticalCharacters $maxConsecutiveIdenticalCharacters -maxPreviousPasswordCharactersReused $maxPreviousPasswordCharactersReused -tempPasswordTtlInHrs $tempPasswordTtlInHrs -passwordTtlInDays $passwordTtlInDays -notificationThresholdInDays $notificationThresholdInDays -notificationIntervalInDays $notificationIntervalInDays | Get-WSAPasswordPolicy -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configure Password Policy on Workspace ONE Access Password ($wsaFqdn): SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-WSAPasswordLockout -numAttempts $numAttempts -attemptInterval $attemptInterval -unlockInterval $unlockInterval -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configure Lockout Policy on Workspace ONE Access Password ($wsaFqdn): SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Assign Workspace ONE Access Roles to Active Directory Groups
            Write-LogMessage -Type INFO -Message "Attempting to Assign Workspace ONE Access Roles to Active Directory Groups"
            $StatusMsg = Add-WorkspaceOneRole -server $wsaFqdn -user admin -pass $wsaAdminPassword -group $wsaSuperAdminGroup -role "Super Admin" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-WorkspaceOneRole -server $wsaFqdn -user admin -pass $wsaAdminPassword -group $wsaDirAdminGroup -role "Directory Admin" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-WorkspaceOneRole -server $wsaFqdn -user admin -pass $wsaAdminPassword -group $wsaReadOnlyGroup -role "ReadOnly Admin" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}