# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-11-09
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================

    .CHANGELOG
    - 1.0.001   (Gary Blake / 2022-01-04)   - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16)   - Added Support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-03)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2022-12-23)   - Removed Password Policy Procedures from Script
    - 1.3.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Added Support for Isolated Workload Domains
                                            - Added Support for Auto-Discovery of Workload Domains
                                            - Improvements to message output

    ===================================================================================================================
    
    .SYNOPSIS
    Configures vCenter Server for Identity and Access Management.

    .DESCRIPTION
    The iamConfigureVsphere.ps1 provides a single script to implement the configuration of vSphere and SDDC Manager
    as defined by the Identity and Access Management for VMware Cloud Foundation validated solution.

    .EXAMPLE
    iamConfigureVsphere.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the configuration of vSphere and SDDC Manager using the parameters provided within the Planning and Preparation Workbook.
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

# Define Reusable Parameters
$solutionName               = "Identity and Access Management for VMware Cloud Foundation"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring vSphere Based on $solutionName" -Colour Yellow
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
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -colour Green
            }

            $allWorkloadDomains             = Get-VCFWorkloadDomain | Select-Object name
            $domainFqdn                     = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $domainBindUser                 = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
            $domainBindPass                 = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value
            $domainControllerMachineName    = $pnpWorkbook.Workbook.Names["domain_controller_hostname"].Value
            $baseGroupDn                    = $pnpWorkbook.Workbook.Names["child_ad_groups_ou"].Value 
            $baseUserDn                     = $pnpWorkbook.Workbook.Names["child_ad_users_ou"].Value
            $vcenterAdminGroup              = $pnpWorkbook.Workbook.Names["group_gg_vc_admins"].Value
            $vcenterReadOnlyGroup           = $pnpWorkbook.Workbook.Names["group_gg_vc_read_only"].Value
            $ssoAdminGroup                  = $pnpWorkbook.Workbook.Names["group_gg_sso_admins"].Value
            $vcfAdminGroup                  = $pnpWorkbook.Workbook.Names["group_gg_vcf_admins"].Value
            $vcfOperatorGroup               = $pnpWorkbook.Workbook.Names["group_gg_vcf_operators"].Value
            $vcfViewerGroup                 = $pnpWorkbook.Workbook.Names["group_gg_vcf_viewers"].Value
            
            $rootCa                         = "Root64.cer"
            if (!(Test-Path ($filePath + "\" + $rootCa) )) {
                Write-LogMessage -Type ERROR -Message "Unable to Find Certificate File: $rootCa, check details and try again" -Colour Red; Break
            } else {
                Write-LogMessage -Type INFO -Message "Found Certificate File: $rootCa" -colour Green
            }

            # Add Active Directory as Identity Provider to the Management vCenter Server
            Write-LogMessage -Type INFO -Message "Add Active Directory as Identity Provider to each vCenter Server Single Sign-On Domain"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Add-IdentitySource -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -dcMachineName $domainControllerMachineName -baseGroupDn $baseGroupDn -baseUserDn $baseUserDn -protocol ldaps -certificate ($filePath + "\" + $rootCa) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Attempting Assign Active Directory Group Global Permissions in vCenter Server
            Write-LogMessage -Type INFO -Message "Attempting Assign Active Directory Group Global Permissions to each vCenter Server Single Sign-On Domain"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcenterAdminGroup -role Admin -propagate true -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcenterReadOnlyGroup -role ReadOnly -propagate true -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Attempting to Assign vCenter Single Sign-On Roles to Active Directory Groups
            Write-LogMessage -Type INFO -Message "Attempting to Assign vCenter Single Sign-On Roles to Active Directory Groups for each Workload Domain"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $ssoAdminGroup -ssoGroup "Administrators" -type group -source external -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Attempting to Assign Active Directory Groups to Roles in SDDC Manager
            Write-LogMessage -Type INFO -Message "Attempting to Assign Active Directory Groups to Roles in SDDC Manager"
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfAdminGroup -role ADMIN -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfOperatorGroup -role OPERATOR -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $vcfViewerGroup -role VIEWER -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finished the Process of Configuring vSphere Based on $solutionName" -Colour Yellow
