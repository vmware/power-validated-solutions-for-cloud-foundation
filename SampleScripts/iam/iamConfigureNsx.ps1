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
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-01-04)   - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16)   - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks
    - 1.1.000   (Gary Blake / 2022-10-03)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2022-12-23)   - Removed Password Policy Procedures from Script
    - 1.3.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Configure NSX Manager for Identity and Access Management

    .DESCRIPTION
    The iamConfigureNsx.ps1 provides a single script to implement the configuration of NSX Manager as defined by the
    Identity and Access Management Validated Solution

    .EXAMPLE
    iamConfigureWorkspaceOne.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the configuration of NSX Manager using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring NSX Manager Based on Identity and Access Management for VMware Cloud Foundation" -Colour Yellow
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
            
            $pvsModulePath              = (Get-InstalledModule -Name PowerValidatedSolutions).InstalledLocation
            $allWorkloadDomains         = Get-VCFWorkloadDomain
            $domainFqdn                 = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $domainBindUser             = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
            $domainBindPass             = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value
            $mgmtSddcDomainName         = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $wldSddcDomainName          = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $wsaFqdn                    = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaAdminPassword           = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $nsxEnterpriseAdminGroup    = $pnpWorkbook.Workbook.Names["group_gg_nsx_enterprise_admins"].Value + "@" + $domainFqdn
            $nsxNetworkEngineerGroup    = $pnpWorkbook.Workbook.Names["group_gg_nsx_network_admins"].Value + "@" + $domainFqdn
            $nsxAuditorGroup            = $pnpWorkbook.Workbook.Names["group_gg_nsx_auditors"].Value + "@" + $domainFqdn
            $vsphereRoleName            = $pnpWorkbook.Workbook.Names["nsxt_vsphere_role_name"].Value
            $ssoDomainFqdn              = ($allWorkloadDomains | Where-Object {$_.type -eq "VI"}).ssoName
            $mgmtServiceAccount         = "svc-" + $pnpWorkbook.Workbook.Names["mgmt_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["mgmt_vc_hostname"].Value
            $wldServiceAccount          = "svc-" + $pnpWorkbook.Workbook.Names["wld_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["wld_vc_hostname"].Value

            # Attempting to Integrate NSX Manager with the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Integrate NSX Manager for each Workload Domain with the Standalone Workspace ONE Access Instance"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Set-WorkspaceOneNsxtIntegration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -wsaFqdn $wsaFqdn -wsaUser admin -wsaPass $wsaAdminPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg -match "SUCCESSFUL" ) { Write-LogMessage -Type INFO -Message "Integrating NSX-T Data Center with Workspace ONE Access for Workload Domain ($sddcDomain): SUCCESSFUL" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Attempting to Assign NSX Manager Roles to Active Directory Groups
            Write-LogMessage -Type INFO -Message "Attempting to Assign NSX Manager Roles for each Workload Domain to Active Directory Groups"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Add-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -type group -principal $nsxEnterpriseAdminGroup -role enterprise_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Add-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -type group -principal $nsxNetworkEngineerGroup -role network_engineer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Add-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -type group -principal $nsxAuditorGroup -role auditor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Define a Custom Role in vSphere for the NSX Manager Service Accounts
            Write-LogMessage -Type INFO -Message "Define a Custom Role in vSphere for the NSX Manager Service Accounts"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -roleName $vsphereRoleName -template ($pvsModulePath + "\SampleScripts\" + "nsx-vsphere-integration.role") -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Add NSX Manager Service Accounts to the vCenter Single Sign-On Built-In Identity Provider License Administrators Group
            Write-LogMessage -Type INFO -Message "Add NSX Manager Service Accounts to the vCenter Single Sign-On Built-In Identity Provider License Administrators Group"
            foreach ($sddcDomain in ($allWorkloadDomains | Where-Object {$_.type -eq "MANAGEMENT"})) {
                $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $sddcDomain.ssoName -principal $mgmtServiceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }
            foreach ($sddcDomain in ($allWorkloadDomains | Where-Object {$_.type -eq "VI"})) {
                $serviceAccount = (Get-VCFCredential | Where-Object {$_.accountType -eq "SERVICE" -and $_.resource.domainName -eq $sddcDomain.name -and $_.resource.resourceType -eq "VCENTER"}).username.Split("@")[-0]
                $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain.name -domain $sddcDomain.ssoName -principal $serviceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Reconfigure the vSphere Role and Permissions Scope for NSX Manager Service Accounts
            Write-LogMessage -Type INFO -Message "Reconfigure the vSphere Role and Permissions Scope for NSX Manager Service Accounts"
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $ssoDomainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $mgmtServiceAccount -role $vsphereRoleName -propagate true -type user -localdomain -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $ssoDomainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $wldServiceAccount -role $vsphereRoleName -propagate true -type user -localdomain -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $ssoDomainFqdn -workloadDomain $mgmtSddcDomainName  -principal $wldServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $ssoDomainFqdn -workloadDomain $wldSddcDomainName  -principal $mgmtServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Configuring NSX Manager Based on Identity and Access Management for VMware Cloud Foundation" -Colour Yellow