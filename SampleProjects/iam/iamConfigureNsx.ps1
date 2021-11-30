<#
    .NOTES
    ===========================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   11/10/2021
    Copyright 2021 VMware, Inc.
    ===========================================================================
    
    .SYNOPSIS
    Configure NSX-T Data Center for Identity and Access Management

    .DESCRIPTION
    The iamConfigureNsx.ps1 provides a single script to implement the configuration of NSX-T Data Center
    as defined by the Identity and Access Management Validated Solution

    .EXAMPLE
    iamConfigureWorkspaceOne.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the configuration of NSX-T Data Center using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring NSX-T Data Center Based on Identity and Access Management for VMware Cloud Foundation" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"

# Perform validation on inputs
Try {
    Write-LogMessage -Type INFO -Message "Checking a Connection to SDDC Manager: $sddcManagerFqdn"
    if (!(Test-Connection -ComputerName $sddcManagerFqdn -Count 1 -ErrorAction SilentlyContinue)) {
        Write-LogMessage -Type ERROR -Message "Unable to connect to server: $sddcManagerFqdn, check details and try again" -Colour Red
        Break
    }
    else {
        Write-LogMessage -Type INFO -Message "Connection to SDDC Manager: $sddcManagerFqdn was Successful"
    }
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    }
    else {
        Write-LogMessage -Type INFO -Message "Found Planning and Preparation Workbook: $workbook"
    }
}
Catch {
    Debug-CatchWriter -object $_
}

Try {
    Write-LogMessage -Type INFO -Message "Attempting to connect to VMware Cloud Foundation to Gather System Details"
    $StatusMsg = Request-VCFToken -fqdn $sddcManagerFqdn -username $sddcManagerUser -password $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message $StatusMsg } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    if ($accessToken) {
        Write-LogMessage -Type INFO -Message "Gathering Details from SDDC Manager Inventory and Extracting Worksheet Data from the Excel Workbook"

        Write-LogMessage -type INFO -message "Opening the Excel Workbook: $Workbook"
        $pnpWorkbook = Open-ExcelPackage -Path $Workbook

        Write-LogMessage -type INFO -message "Checking Valid Planning and Prepatation Workbook Provided"
        if ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.3.x") {
            Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
            Break
        }

        $domainFqdn                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
        $domainBindUser                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
        $domainBindPass                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value

        $mgmtSddcDomainName                 = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
        $wldSddcDomainName                  = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value

        $wsaFqdn                            = $pnpWorkbook.Workbook.Names["region_wsa_fqdn"].Value
        $wsaAdminPassword                   = $pnpWorkbook.Workbook.Names["standalone_wsa_appliance_admin_password"].Value

        $nsxEnterpriseAdminGroup            = $pnpWorkbook.Workbook.Names["group_gg_nsx_enterprise_admins"].Value + "@" + $domainFqdn
        $nsxNetworkEngineerGroup            = $pnpWorkbook.Workbook.Names["group_gg_nsx_network_admins"].Value + "@" + $domainFqdn
        $nsxAuditorGroup                    = $pnpWorkbook.Workbook.Names["group_gg_nsx_auditors"].Value + "@" + $domainFqdn

        $apiLockoutPeriod                   = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_api_lockout_period"].Value
        $apiResetPeriod                     = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_api_lockout_reset_period"].Value
        $apiMaxAttempt                      = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_api_max_auth_failures"].Value
        $cliLockoutPeriod                   = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_cli_lockout_period"].Value
        $cliMaxAttempt                      = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_cli_max_auth_failures"].Value
        $minPasswordLength                  = [Int]$pnpWorkbook.Workbook.Names["nsxt_password_min_length"].Value

        $vsphereRoleName                    = $pnpWorkbook.Workbook.Names["nsxt_vsphere_role_name"].Value

        $ssoDomainFqdn                      = "vsphere.local"
        $mgmtServiceAccount                 = "svc-" + $pnpWorkbook.Workbook.Names["mgmt_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["mgmt_vc_hostname"].Value
        $wldServiceAccount                  = "svc-" + $pnpWorkbook.Workbook.Names["wld_nsxt_hostname"].Value + "-" + $pnpWorkbook.Workbook.Names["wld_vc_hostname"].Value
    }
    else {
        Write-LogMessage -Type ERROR -Message "Unable to connect to SDDC Manager $server" -Colour Red
        Exit
    }
}
Catch {
    Debug-CatchWriter -object $_
}

Try {
    # Attempting to Integrate NSX-T Data Center with the Standalone Workspace ONE Access Instance
    Write-LogMessage -Type INFO -Message "Attempting to Integrate NSX-T Data Center with the Standalone Workspace ONE Access Instance"
    $StatusMsg = Set-WorkspaceOneNsxtIntegration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -wsaFqdn $wsaFqdn -wsaUser admin -wsaPass $wsaAdminPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg -match "SUCCESFUL" ) { Write-LogMessage -Type INFO -Message "Integrating NSX-T Data Center with Workspace ONE Access for Workload Domain ($mgmtSddcDomainName): SUCCESFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Set-WorkspaceOneNsxtIntegration -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -wsaFqdn $wsaFqdn -wsaUser admin -wsaPass $wsaAdminPassword -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg -match "SUCCESFUL" ) { Write-LogMessage -Type INFO -Message "Integrating NSX-T Data Center with Workspace ONE Access for Workload Domain ($wldSddcDomainName): SUCCESFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Attempting to Assign NSX-T Data Center Roles to Active Directory Groups
    Write-LogMessage -Type INFO -Message "Attempting to Assign NSX-T Data Center Roles to Active Directory Groups"
    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -group $nsxEnterpriseAdminGroup -role enterprise_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -group $nsxNetworkEngineerGroup -role network_engineer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -group $nsxAuditorGroup -role auditor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -group $nsxEnterpriseAdminGroup -role enterprise_admin -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -group $nsxNetworkEngineerGroup -role network_engineer -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-NsxtVidmGroupRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -group $nsxAuditorGroup -role auditor -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Attempting to Configure the Authentication Policy for NSX Managers
    Write-LogMessage -Type INFO -Message "Attempting to Configure the Authentication Policy for NSX Managers"
    $StatusMsg = Set-NsxtManagerAuthenticationPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -apiLockoutPeriod $apiLockoutPeriod -apiResetPeriod $apiResetPeriod -apiMaxAttempt $apiMaxAttempt -cliLockoutPeriod $cliLockoutPeriod -cliMaxAttempt $cliMaxAttempt -minPasswdLength $minPasswordLength -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Set-NsxtManagerAuthenticationPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -apiLockoutPeriod $apiLockoutPeriod -apiResetPeriod $apiResetPeriod -apiMaxAttempt $apiMaxAttempt -cliLockoutPeriod $cliLockoutPeriod -cliMaxAttempt $cliMaxAttempt -minPasswdLength $minPasswordLength -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Attempting to Configure the Authentication Policy for NSX Edge Nodes
    Write-LogMessage -Type INFO -Message "Attempting to Configure the Authentication Policy for NSX Edge Nodes"
    $StatusMsg = Set-NsxtEdgeNodeAuthenticationPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $mgmtSddcDomainName -cliLockoutPeriod $cliLockoutPeriod -cliMaxAttempt $cliMaxAttempt -minPasswdLength $minPasswordLength -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Set-NsxtEdgeNodeAuthenticationPolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -cliLockoutPeriod $cliLockoutPeriod -cliMaxAttempt $cliMaxAttempt -minPasswdLength $minPasswordLength -detail false -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Define a Custom Role in vSphere for the NSX-T Data Center Service Accounts
    Write-LogMessage -Type INFO -Message "Define a Custom Role in vSphere for the NSX-T Data Center Service Accounts"
    $StatusMsg = Add-vSphereRole -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -roleName $vsphereRoleName -template ($filePath + "\" + "nsx-vsphere-integration.role") -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Add NSX-T Data Center Service Accounts to the vCenter Single Sign-On Built-In Identity Provider License Administrators Group
    Write-LogMessage -Type INFO -Message "Add NSX-T Data Center Service Accounts to the vCenter Single Sign-On Built-In Identity Provider License Administrators Group"
    $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $mgmtSddcDomainName -domain $ssoDomainFqdn -principal $mgmtServiceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-SsoPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $wldSddcDomainName -domain $ssoDomainFqdn -principal $wldServiceAccount -ssoGroup "LicenseService.Administrators" -type user -source local -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Reconfigure the vSphere Role and Permissions Scope for NSX-T Data Center Service Accounts
    Write-LogMessage -Type INFO -Message "Reconfigure the vSphere Role and Permissions Scope for NSX-T Data Center Service Accounts"
    $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $mgmtServiceAccount -role $vsphereRoleName -propagate true -type user -localdomain -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-vCenterGlobalPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -domainBindUser $domainBindUser -domainBindPass $domainBindPass -principal $wldServiceAccount -role $vsphereRoleName -propagate true -type user -localdomain -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -workloadDomain $mgmtSddcDomainName  -principal $wldServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Set-vCenterPermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain vsphere.local -workloadDomain $wldSddcDomainName  -principal $mgmtServiceAccount -role "NoAccess" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
}
Catch {
    Debug-CatchWriter -object $_
}