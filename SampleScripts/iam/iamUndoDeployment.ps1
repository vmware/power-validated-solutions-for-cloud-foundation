# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2022-03-01
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================

    .CHANGELOG
    - 1.1.000   (Gary Blake / 2022-10-03)   - Added Support for VCF 4.5.x Planning and Prep Workbook
    - 1.3.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Removes the Identity and Access Management.

    .DESCRIPTION
    The iamUndoDeployment.ps1 provides a single script to remove the configuration
    as defined by the Identity and Access Management for VMware Cloud Foundation validated solution.

    .EXAMPLE
    iamUndoDeployment.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the removal of the Identity and Access Management for VMware Cloud Foundation validated solution using the parameters provided within the Planning and Preparation Workbook.
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
Write-LogMessage -Type INFO -Message "Starting the Process of Removing $solutionName from Instance: $sddcManagerFqdn" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"
Write-LogMessage -Type INFO -Message "Setting the working directoy to path: $filePath"

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
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))" -colour Green
            }

            $allWorkloadDomains         = Get-VCFWorkloadDomain
            $domainFqdn                 = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
            $ssoDomainFqdn              = "vsphere.local"
            $mgmtSddcDomainName         = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $wldSddcDomainName          = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $nsxEnterpriseAdminGroup    = $pnpWorkbook.Workbook.Names["group_gg_nsx_enterprise_admins"].Value + "@" + $domainFqdn
            $nsxNetworkEngineerGroup    = $pnpWorkbook.Workbook.Names["group_gg_nsx_network_admins"].Value + "@" + $domainFqdn
            $nsxAuditorGroup            = $pnpWorkbook.Workbook.Names["group_gg_nsx_auditors"].Value + "@" + $domainFqdn
            $wsaFqdn                    = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
            $wsaAdminPassword           = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value
            $wsaFolder                  = $pnpWorkbook.Workbook.Names["mgmt_region_wsa_vm_folder"].Value
            $wsaHostname                = $pnpWorkbook.Workbook.Names["region_wsa_hostname"].Value
            $drsGroupName               = $mgmtSddcDomainName + "-vm-group-wsa"
            $vcfAdminGroup              = $pnpWorkbook.Workbook.Names["group_gg_vcf_admins"].Value
            $vcfOperatorGroup           = $pnpWorkbook.Workbook.Names["group_gg_vcf_operators"].Value
            $vcfViewerGroup             = $pnpWorkbook.Workbook.Names["group_gg_vcf_viewers"].Value
            $ssoAdminGroup              = $pnpWorkbook.Workbook.Names["group_gg_sso_admins"].Value
            $vcenterAdminGroup          = $pnpWorkbook.Workbook.Names["group_gg_vc_admins"].Value
            $vcenterReadOnlyGroup       = $pnpWorkbook.Workbook.Names["group_gg_vc_read_only"].Value
            $vsphereRoleName            = $pnpWorkbook.Workbook.Names["nsxt_vsphere_role_name"].Value
            $mgmtServiceAccount         = "svc-" + $pnpWorkbook.Workbook.Names["mgmt_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["mgmt_vc_hostname"].Value
            $wldServiceAccount          = "svc-" + $pnpWorkbook.Workbook.Names["wld_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["wld_vc_hostname"].Value
            
            # Remove NSX Manager Service Accounts from the vCenter Single Sign-On Built-In Identity Provider License Administrators Group
            Write-LogMessage -Type INFO -Message "Attempting to Remove NSX Manager Service Accounts from the vCenter Single Sign-On Built-In Identity Provider License Administrators Group"
            $StatusMsg = Undo-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $ssoDomainFqdn -principal $mgmtServiceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            foreach ($sddcDomain in ($allWorkloadDomains | Where-Object {$_.type -eq "VI"})) {
                $serviceAccount = (Get-VCFCredential | Where-Object {$_.accountType -eq "SERVICE" -and $_.resource.domainName -eq $sddcDomain.name -and $_.resource.resourceType -eq "VCENTER"}).username.Split("@")[-0]
                $StatusMsg = Undo-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain.name -domain $sddcDomain.ssoName -principal $serviceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Remove Active Directory Groups from NSX Manager Roles
            Write-LogMessage -Type INFO -Message "Attempting to Remove Active Directory Groups from NSX Manager Roles"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -principal $nsxEnterpriseAdminGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Undo-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -principal $nsxNetworkEngineerGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Undo-NsxtVidmRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -principal $nsxAuditorGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Disable Integration between NSX Manager with the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Disable Integration between NSX Manager with the Standalone Workspace ONE Access Instance"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-WorkspaceOneNsxtIntegration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomain -wsaFqdn $wsaFqdn -wsaUser admin -wsaPass $wsaAdminPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Remove the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Remove the Standalone Workspace ONE Access Instance"
            $StatusMsg = Undo-WorkspaceOne -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -wsaHostname $wsaHostname -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a VM Group for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Remove a VM Group for the Standalone Workspace ONE Access Instance"
            $StatusMsg = Undo-ClusterGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -drsGroupName $drsGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Virtual Machine and Template Folder for the Standalone Workspace ONE Access Instance
            Write-LogMessage -Type INFO -Message "Attempting to Remove Virtual Machine and Template Folder for the Standalone Workspace ONE Access Instance"
            $StatusMsg = Undo-VMFolder -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -folderName $wsaFolder -folderType VM -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Active Directory Groups from SDDC Manager Roles
            Write-LogMessage -Type INFO -Message "Remove Active Directory Groups from SDDC Manager Roles"
            $StatusMsg = Undo-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -principal $vcfAdminGroup -type GROUP -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -principal $vcfOperatorGroup -type GROUP -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Undo-SddcManagerRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -principal $vcfViewerGroup -type GROUP -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Active Directory Groups from vCenter Single Sign-On Roles
            Write-LogMessage -Type INFO -Message "Attempting to Remove Active Directory Groups from vCenter Single Sign-On Roles"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -principal $ssoAdminGroup -ssoGroup "Administrators" -type group -source external -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Remove Active Directory Groups from vCenter Server Roles
            Write-LogMessage -Type INFO -Message "Attempting to Remove Active Directory Groups from vCenter Server Roles"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -principal $vcenterAdminGroup -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
                $StatusMsg = Undo-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -principal $vcenterReadOnlyGroup -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Remove Active Directory as Identity Provider from Management vCenter Server
            Write-LogMessage -Type INFO -Message "Attempting to Remove Active Directory as Identity Provider from Management vCenter Server"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-IdentitySource -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -domain $domainFqdn -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }

            # Reconfigure the vSphere Role for NSX Manager Service Accounts
            Write-LogMessage -Type INFO -Message "Reconfigure the vSphere Role for NSX Manager Service Accounts"
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -workloadDomain $mgmtSddcDomainName -principal $wldServiceAccount -role "Admin" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -workloadDomain $wldSddcDomainName -principal $mgmtServiceAccount -role "Admin" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove the Custom Role from vSphere for the NSX Manager Service Accounts
            Write-LogMessage -Type INFO -Message "Remove the Custom Role from vSphere for the NSX Manager Service Accounts"
            foreach ($sddcDomain in $allWorkloadDomains.name) {
                $StatusMsg = Undo-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $sddcDomain -roleName $vsphereRoleName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Removing $solutionName from Instance: $sddcManagerFqdn" -Colour Yellow
