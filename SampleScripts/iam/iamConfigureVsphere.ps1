# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   2021-11-09
    Copyright 2021-2022 VMware, Inc.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-01-04) - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16) - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-03) - Added Support for VCF 4.5.x Planning and Prep Workbook

    ===================================================================================================================
    
    .SYNOPSIS
    Configure vCenter Server for Identity and Access Management

    .DESCRIPTION
    The iamConfigureVsphere.ps1 provides a single script to implement  the configuration of vSphere and SDDC
    Manager as defined by the Identity and Access Management Validated Solution

    .EXAMPLE
    iamConfigureVsphere.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the configuration of vSphere and SDDC Manager using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring vSphere Based on Identity and Access Management for VMware Cloud Foundation" -Colour Yellow
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

            $domainFqdn                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $mgmtSddcDomainName                 = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $wldSddcDomainName                  = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $domainBindUser                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
            $domainBindPass                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value
            $domainControllerMachineName        = $pnpWorkbook.Workbook.Names["domain_controller_hostname"].Value
            $baseGroupDn                        = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value 
            $baseUserDn                         = $pnpWorkbook.Workbook.Names["child_ad_users_ou"].Value
            $vcenterAdminGroup                  = $pnpWorkbook.Workbook.Names["group_gg_vc_admins"].Value
            $vcenterReadOnlyGroup               = $pnpWorkbook.Workbook.Names["group_gg_vc_read_only"].Value
            $ssoAdminGroup                      = $pnpWorkbook.Workbook.Names["group_gg_sso_admins"].Value
            $ssoServerFqdn                      = (Get-VCFvCenter | Where-Object {$_.domain.id -eq (Get-VCFWorkloadDomain | Where-Object {$_.type -eq "MANAGEMENT"}).id}).fqdn
            $ssoServerUser                      = (Get-VCFCredential | Where-Object {$_.accountType -eq "SYSTEM" -and $_.credentialType -eq "SSO"}).username
            $ssoServerPass                      = (Get-VCFCredential | Where-Object {$_.accountType -eq "SYSTEM" -and $_.credentialType -eq "SSO"}).password
            $emailNotification                  = $pnpWorkbook.Workbook.Names["vcenter_password_validity_email_address"].Value  
            $maxDays                            = $pnpWorkbook.Workbook.Names["vcenter_password_validity"].Value
            $passwordCount                      = $pnpWorkbook.Workbook.Names["sso_password_resuse"].Value
            $minLength                          = $pnpWorkbook.Workbook.Names["sso_password_min_length"].Value
            $maxLength                          = $pnpWorkbook.Workbook.Names["sso_password_max_length"].Value
            $minNumericCount                    = $pnpWorkbook.Workbook.Names["sso_password_numeric_characters"].Value
            $minSpecialCharCount                = $pnpWorkbook.Workbook.Names["sso_password_special_characters"].Value
            $maxIdenticalAdjacentCharacters     = $pnpWorkbook.Workbook.Names["sso_password_indentical_adjacent_characters"].Value
            $minAlphabeticCount                 = $pnpWorkbook.Workbook.Names["sso_password_alphabetic_characters"].Value
            $minUppercaseCount                  = $pnpWorkbook.Workbook.Names["sso_password_uppercase_characters"].Value
            $minLowercaseCount                  = $pnpWorkbook.Workbook.Names["sso_password_lowercase_characters"].Value
            $passwordLifetimeDays               = $pnpWorkbook.Workbook.Names["sso_password_validity"].Value
            $autoUnlockIntervalSec              = $pnpWorkbook.Workbook.Names["sso_unlock_time"].Value
            $failedAttemptIntervalSec           = $pnpWorkbook.Workbook.Names["sso_logon_failure_interval"].Value
            $maxFailedAttempts                  = $pnpWorkbook.Workbook.Names["sso_max_logon_attempts"].Value
            $vcfAdminGroup                      = $pnpWorkbook.Workbook.Names["group_gg_vcf_admins"].Value
            $vcfOperatorGroup                   = $pnpWorkbook.Workbook.Names["group_gg_vcf_operators"].Value
            $vcfViewerGroup                     = $pnpWorkbook.Workbook.Names["group_gg_vcf_viewers"].Value
            $mgmtCluster                        = $pnpWorkbook.Workbook.Names["mgmt_cluster"].Value
            $wldCluster                         = $pnpWorkbook.Workbook.Names["wld_cluster"].Value
            $policy                             = $pnpWorkbook.Workbook.Names["esxi_password_quality_control"].Value

            $rootCa                             = "Root64.cer"
            if (!(Test-Path ($filePath + "\" + $rootCa) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $rootCa, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Certificate File: $rootCa" }

            # Add Active Directory as Identity Provider to the Management vCenter Server
            Write-LogMessage -Type INFO -Message "Add Active Directory as Identity Provider to the Management vCenter Server"
            $StatusMsg = Add-IdentitySource -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -dcMachineName $domainControllerMachineName -baseGroupDn $baseGroupDn -baseUserDn $baseUserDn -protocol ldaps -certificate ($filePath + "\" + $rootCa) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting Assign Active Directory Group Global Permissions in vCenter Server
            Write-LogMessage -Type INFO -Message "Attempting Assign Active Directory Group Global Permissions in vCenter Server"
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcenterAdminGroup -role Admin -propagate true -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcenterReadOnlyGroup -role ReadOnly -propagate true -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Assign vCenter Single Sign-On Roles to Active Directory Groups
            Write-LogMessage -Type INFO -Message "Attempting to Assign vCenter Single Sign-On Roles to Active Directory Groups"
            $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $ssoAdminGroup -ssoGroup "Administrators" -type group -source external -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure the vCenter Server Appliance Password Expiration Date
            Write-LogMessage -Type INFO -Message "Attempting to Configure the vCenter Server Appliance Password Expiration Date"
            $StatusMsg = Set-vCenterPasswordExpiration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -passwordExpires $true -email $emailNotification -maxDaysBetweenPasswordChange $maxDays -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPasswordExpiration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -passwordExpires $true -email $emailNotification -maxDaysBetweenPasswordChange $maxDays -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure the vCenter Single Sign-On Password Policy
            Write-LogMessage -Type INFO -Message "Attempting to Configure the vCenter Single Sign-On Password Policy"
            Connect-SsoAdminServer -Server $ssoServerFqdn -User $ssoServerUser -Password $ssoServerPass | Out-Null
            Get-SsoPasswordPolicy | Set-SsoPasswordPolicy -ProhibitedPreviousPasswordsCount $passwordCount -MinLength $minLength -MaxLength $maxLength -MinNumericCount $minNumericCount -MinSpecialCharCount $minSpecialCharCount -MaxIdenticalAdjacentCharacters $maxIdenticalAdjacentCharacters -MinAlphabeticCount $minAlphabeticCount -MinUppercaseCount $minUppercaseCount -MinLowercaseCount $minLowercaseCount -PasswordLifetimeDays $passwordLifetimeDays | Out-Null
            Disconnect-SsoAdminServer -Server $ssoServerFqdn | Out-Null
            Write-LogMessage -Type INFO -Message "Configuring vCenter Single Sign-On Password Policy: SUCCESSFUL"

            # Attempting to Configure the vCenter Single Sign-On Lockout Policy
            Write-LogMessage -Type INFO -Message "Attempting to Configure the vCenter Single Sign-On Lockout Policy"
            Connect-SsoAdminServer -Server $ssoServerFqdn -User $ssoServerUser -Password $ssoServerPass | Out-Null
            Get-SsoLockoutPolicy | Set-SsoLockoutPolicy -AutoUnlockIntervalSec $autoUnlockIntervalSec -FailedAttemptIntervalSec $failedAttemptIntervalSec -MaxFailedAttempts $maxFailedAttempts | Out-Null
            Disconnect-SsoAdminServer -Server $ssoServerFqdn | Out-Null
            Write-LogMessage -Type INFO -Message "Configuring vCenter Single Sign-On Lockout Policy: SUCCESSFUL"

            # Attempting to Assign Active Directory Groups to Roles in SDDC Manager
            Write-LogMessage -Type INFO -Message "Attempting to Assign Active Directory Groups to Roles in SDDC Manager"
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfAdminGroup -role ADMIN -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfOperatorGroup -role OPERATOR -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfViewerGroup -role VIEWER -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Attempting to Configure ESXi Hosts Password and Lockout Policies
            Write-LogMessage -Type INFO -Message "Attempting to Configure ESXi Hosts Password and Lockout Policies"
            $StatusMsg = Set-EsxiPasswordPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -cluster $mgmtCluster -policy $policy -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-EsxiPasswordPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -cluster $wldCluster -policy $policy -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red } 
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}