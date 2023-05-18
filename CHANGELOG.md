# Release History

## v2.3.0 (Not Released)

- **Breaking Change** - Updated `Add-vCenterGlobalPermission` cmdlet to require the `-sddcDomain` parameter to support isolated workload domains.
- **Breaking Change** - Updated `Undo-vCenterGlobalPermission` cmdlet to require the `-sddcDomain` parameter to support isolated workload domains.
- Fixed `New-vROPSDeployment` license check in vRealize Suite Lifecycle Manager locker.
- Fixed `New-vRADeployment` license check in vRealize Suite Lifecycle Manager locker.
- Enhanced `Export-vRLIJsonSpec` with a new switch to define a custom version of vRealize Log Insight to deploy.
- Enhanced `New-vRLIDeployment` with a new switch to define a custom version of vRealize Log Insight to deploy.
- Enhanced `Export-vROPSJsonSpec` with a new switch to define a custom version of vRealize Operations to deploy.
- Enhanced `New-vROPSDeployment` with a new switch to define a custom version of vRealize Operations to deploy.
- Enhanced `Export-vRAJsonSpec` with a new switch to define a custom version of vRealize Automation to deploy.
- Enhanced `New-vRADeployment` with a new switch to define a custom version of vRealize Automation to deploy.
- Enhanced `Export-WSAJsonSpec` with a new switch to define a custom version of Workspace ONE Access to deploy.
- Enhanced `New-WSADeployment` with a new switch to define a custom version of Workspace ONE Access to deploy.
- Added `operations-for-networks-vsphere-integration.role` file for Aria Operations for Networks to vSphere Integration.
- Updated `cbo-vsphere-integration.role` to `operations-vsphere-integration.role` so that its more closely aligned to the product.
- Updated `cbl-vsphere-integration.role` to `operations-for-logs-vsphere-integration.role` so that its more closely aligned to the product.
- Updated `Export-WsaJsonSpec` to support VMware Cloud Foundation v4.5.1 and Workspace ONE Access
- Updated `Export-vRLIJsonSpec` to support VMware Cloud Foundation v4.5.1.
- Updated `Export-vROPSJsonSpec` to support VMware Cloud Foundation v4.5.1.
- Updated `Export-vRAJsonSpec` to support VMware Cloud Foundation v4.5.1.

## v2.2.0 (2023-04-25)

- Moved all Password Policy Configuration Functions to new `VMware.CloudFoundation.PasswordManagement` module.
- Fixed `New-vRLIDeployment` cmdlet where in some scenarios it was failing to find the license alias.
- Enhanced `Test-VCFConnection` cmdlet to use `Test-NetConnection` with ports 443 (HTTPS) and 22 (SSH) instead of ICMP.
- Enhanced `Get-vCenterServerDetail` cmdlet with examples and utilizing `Test-VCFConnection` and `Test-VCFAuthentication`.
- Enhanced `Get-NsxtServerDetail` cmdlet with examples and utilizing `Test-VCFConnection` and `Test-VCFAuthentication`.
- Enhanced `Get-vRSLCMServerDetail` cmdlet with a synopsis and examples.
- Enhanced `Get-WSAServerDetail` cmdlet with a synopsis and examples.
- Enhanced `Get-vRAServerDetail` cmdlet with a synopsis and examples.
- Enhanced `Get-vROPsServerDetail` cmdlet with a synopsis and examples.
- Enhanced `Get-vRLIServerDetail` cmdlet with a synopsis and examples.
- Added `Test-PowerValidatedSolutionsPrereq` cmdlet to perform a check for the installation of prerequisite PowerShell modules.
- Added `Show-PowerValidatedSolutionsOutput` cmdlet to handle formatting of output to the console when PowerVCF is not installed.
- Fixed `Get-GlobalPermission` cmdlet to correclty read the HTML response data.

### Deprecation

- Removed `Get-EsxiPasswordPolicy`
- Removed `Set-EsxiPasswordExpirationPeriod`
- Removed `Set-EsxiPasswordPolicy`
- Removed `Get-VCServerPasswordPolicy`
- Removed `Get-SsoPasswordPolicies`
- Removed `Get-NsxtManagerAuthenticationPolicy`
- Removed `Set-NsxtManagerAuthenticationPolicy`
- Removed `Get-NsxtEdgeNodeAuthenticationPolicy`
- Removed `Set-NsxtEdgeNodeAuthenticationPolicy`
- Removed `Confirm-PSModule`

## v2.1.1 (2023-11-04)

- Fixed `Get-vCenterServerDetail` cmdlet to check for VMware Cloud Foundation version when looking up the vCenter Single Sign-On credentials.
- Enhanced `New-vROPSNotification` cmdlet to check that the alert plugin is valid.
- Enhanced `Import-vROPSNotification` cmdlet to handle output from low level functions.

## v2.1.0 (2023-28-03)

- Enhanced `Get-vCenterServerDetail` cmdlet to to support VCF 5.0 and isolated workload domains.
- Enhanced `Add-IdentitySource` cmdlet to support VCF 5.0 and isolated workload domains.
- Enhanced `Undo-IdentitySource` cmdlet to support VCF 5.0 and isolated workload domains.
- Enhanced `Add-SsoPermission` cmdlet to support VCF 5.0 and isolated workload domains.
- Enhanced `Undo-SsoPermission` cmdlet to support VCF 5.0 and isolated workload domains.
- Enhanced `Add-vSphereRole` cmdlet to support VCF 5.0 and isolated workload domains.
- Enhanced `Undo-vSphereRole` cmdlet to support VCF 5.0 and isolated workload domains.
- Fixed `Get-GlobalPermission` cmdlet where UseBasicParsing was set to false but should be true.

## v2.0.1 (2023-28-02)

- Added `Convert-CssClassStyle` cmdlet to modify the CSS Style in the HTML output.
- Added `cbl-vsphere-integration.role` role file to support adding the vRealize Log Insight Cloud to vSphere Integration role in vCenter Server.
- Added `cbo-vsphere-integration.role` role file to support adding the vRealize Operations Cloud to vSphere Integration role in vCenter Server.
- Enhanced `Test-SSOAuthentication` cmdlet to include -SkipCertificateCheck parameter to handle platforms with self-signed certificates.
- Fixed `Publish-*` cmdlets to use `Convert-CssClassStyle` rather than `Convert-CssClass` which is part of VMware Cloud Foundation reporting module.

## v2.0.0 (2023-31-01)

- Added `Request-EsxiPasswordExpiration` cmdlet to retrieve the password expiration policy for all ESXi hosts in a cluster.
- Added `Request-EsxiPasswordComplexity` cmdlet to retrieve the password complexity policy for all ESXi hosts in a cluster.
- Added `Request-EsxiAccountLockout` cmdlet to retrieve the account lockout policy for all ESXi hosts in a cluster.
- Added `Update-EsxiPasswordExpiration` cmdlet to update the password expiration policy for all ESXi hosts in a cluster.
- Added `Update-EsxiPasswordComplexity` cmdlet to update the password complexity policy for all ESXi hosts in a cluster.
- Added `Update-EsxiAccountLockout` cmdlet to update the account lockout policy for all ESXi hosts in a cluster.
- Added `Request-SsoPasswordExpiration` cmdlet to retrieve the password expiration policy for vCenter Single Sign-On domain.
- Added `Request-SsoPasswordComplexity` cmdlet to retrieve the password complexity policy for vCenter Single Sign-On domain.
- Added `Request-SsoAccountLockout` cmdlet to retrieve the account lockout policy for vCenter Single Sign-On domain.
- Added `Update-SsoPasswordExpiration` cmdlet to update the password expiration policy for vCenter Single Sign-On domain.
- Added `Update-SsoPasswordComplexity` cmdlet to update the password complexity policy for vCenter Single Sign-On domain.
- Added `Update-SsoAccountLockout` cmdlet to update the account lockout policy for vCenter Single Sign-On domain.
- Added `Request-VcenterPasswordExpiration` cmdlet to retrieve the global password expiration policy for vCenter Server.
- Added `Request-VcenterRootPasswordExpiration` cmdlet to retrieve the root user password expiration policy for vCenter Server.
- Added `Update-VcenterPasswordExpiration` cmdlet to update the global password expiration policy for vCenter Server.
- Added `Update-VcenterRootPasswordExpiration` cmdlet to update the root user password expiration policy for vCenter Server.
- Added `Get-LocalUserPasswordExpiration` cmdlet to retrieve the password expiration policy for a local user.
- Added `Set-LocalUserPasswordExpiration` cmdlet to configure the password expiration policy for a local user.
- Added `Request-LocalUserPasswordExpiration` cmdlet to retrieve the password expiration policy for a local user from any virtual machine.
- Added `Update-LocalUserPasswordExpiration` cmdlet to configure the password expiration policy for a local user from any virtual machine.
- Added `Request-WsaPasswordExpiration` cmdlet to retrieve the password expiration policy for Workspace ONE Access.
- Added `Request-WsaPasswordComplexity` cmdlet to retrieve the password complexity policy for Workspace ONE Access.
- Added `Request-WsaAccountLockout` cmdlet to retrieve the account lockout policy for Workspace ONE Access.
- Added `Update-WsaPasswordExpiration` cmdlet to update the password expiration policy for Workspace ONE Access.
- Added `Update-WsaPasswordComplexity` cmdlet to update the password complexity policy for Workspace ONE Access.
- Added `Update-WsaAccountLockout` cmdlet to update the account lockout policy for Workspace ONE Access.
- Added `Request-NsxtEdgePasswordExpiration` cmdlet to retrieve password expiration policy for NSX Manager nodes.
- Added `Update-NsxtEdgePasswordExpiration` cmdlet to updated password expiration policy for NSX Manager nodes.
- Added `Request-NsxtManagerAccountLockout` cmdlet to retrieve the account lockout policy for NSX Manager nodes.
- Added `Update-NsxtManagerAccountLockout` cmdlet to update the account lockout policy for NSX Manager nodes.
- Added `Request-NsxtEdgeAccountLockout` cmdlet to retrieve the account lockout policy for NSX Edge nodes.
- Added `Update-NsxtEdgeAccountLockout` cmdlet to update the account lockout policy for NSX Edge nodes.
- Added `Get-LocalPasswordComplexity` cmdlet to retrieve the password complexity in `/etc/pam.d/system-password`.
- Added `Set-LocalPasswordComplexity` cmdlet to configure the password complexity in `/etc/pam.d/system-password`.
- Added `Request-VcenterPasswordComplexity` cmdlet to retrieve the password complexity for a vCenter Server.
- Added `Update-VcenterPasswordComplexity` cmdlet to update the password complexity for a vCenter Server.
- Added `Request-NsxtManagerPasswordExpiration` cmdlet to retrieve the password expiration for NSX Local Manager Local Users.
- Added `Update-NsxtManagerPasswordExpiration` cmdlet to update the password expiration for NSX Local Manager Local Users.
- Added `Request-NsxtManagerPasswordComplexity` cmdlet to retrieve the password complexity for NSX Local Manager nodes.
- Added `Update-NsxtManagerPasswordComplexity` cmdlet to update the password complexity for NSX Local Manager nodes.
- Added `Request-NsxtEdgePasswordComplexity` cmdlet to retrieve the password complexity for NSX Edge nodes.
- Added `Update-NsxtEdgePasswordComplexity` cmdlet to update the password complexity for NSX Edge nodes.
- Added `Request-SddcManagerPasswordComplexity` cmdlet to retrieve the password complexity for SDDC Manager.
- Added `Update-SddcManagerPasswordComplexity` cmdlet to update the password complexity for SDDC Manager.
- Added `Request-WsaLocalUserPasswordComplexity` cmdlet to retrieve the local user password complexity for Workspace ONE Access.
- Added `Update-WsaLocalUserPasswordComplexity` cmdlet to update the local user password complexity for Workspace ONE Access.
- Added `Get-LocalAccountLockout` cmdlet to retrieve the local user account lockout policy from a virtual machine.
- Added `Set-LocalAccountLockout` cmdlet to update the local user account lockout policy from a virtual machine.
- Added `Request-VcenterAccountLockout` cmdlet to retrieve the local user account lockout policy for vCenter Server.
- Added `Update-VcenterAccountLockout` cmdlet to update  the local user account lockout policy for vCenter Server.
- Added `Request-SddcManagerAccountLockout` cmdlet to retrieve the local user account lockout policy for SDDC Manager.
- Added `Update-SddcManagerAccountLockout` cmdlet to update the local user account lockout policy for SDDC Manager.
- Added `Request-WsaLocalUserAccountLockout` cmdlet to retrieve the local user account lockout policy for Workspace ONE Access.
- Added `Update-WsaLocalUserAccountLockout` cmdlet to update the local user account lockout policy for Workspace ONE Access.
- Added `Publish-EsxiPasswordPolicy` cmdlet to retrieve the requested password policy for all ESXi hosts and output the details.
- Added `Invoke-PasswordPolicyManager` cmdlet to generate the Password Policy Manager report.
- Added `Publish-SddcManagerPasswordExpiration` cmdlet to retrieve password expiration policy for SDDC Manager and output the details.
- Added `Publish-SddcManagerPasswordComplexity` cmdlet to retrieve password complexity policy for SDDC Manager and output the details.
- Added `Publish-SddcManagerAccountLockout` cmdlet to retrieve account lockout policy for SDDC Manager and output the details.
- Added `Publish-SsoPasswordPolicy` cmdlet to retrieve the requested password policy for vCenter Single Sign-On and output the details.
- Added `Publish-VcenterPasswordExpiration` cmdlet to retrieve password expiration policy for vCenter Server and output the details.
- Added `Publish-VcenterLocalPasswordExpiration` cmdlet to retrieve password expiration policy for Local Users of vCenter Server and output the details.
- Added `Publish-VcenterLocalPasswordComplexity` cmdlet to retrieve password complexity policy for Local Users of vCenter Server and output the details.
- Added `Publish-VcenterLocalAccountLockout` cmdlet to retrieve account lockout policy for Local Users of vCenter Server and output the details.
- Added `Publish-NsxManagerPasswordExpiration` cmdlet to retrieve password expiration policy for NSX Manager and output the details.
- Added `Publish-NsxManagerPasswordComplexity` cmdlet to retrieve password complexity policy for NSX Manager and output the details.
- Added `Publish-NsxManagerAccountLockout` cmdlet to retrieve account lockout policy for NSX Manager and output the details.
- Added `Publish-NsxEdgePasswordExpiration` cmdlet to retrieve password expiration policy for NSX Edge and output the details.
- Added `Publish-NsxEdgePasswordComplexity` cmdlet to retrieve password complexity policy for NSX Edge and output the details.
- Added `Publish-NsxEdgeAccountLockout` cmdlet to retrieve account lockout policy for NSX Edge and output the details.
- Added `Get-PasswordPolicyDefault` cmdlet to retrieve the default password policy settings either to an output or JSON file.
- Added `Start-PasswordPolicyConfig` cmdlet to perform the configuration of password policy across a VMware Cloud Foundation instance.
- Added `Publish-WsaDirectoryPasswordPolicy` cmdlet to retrieve password policies for Workspace ONE Access Local Directory Users and output the details.
- Added `Publish-WsaLocalPasswordPolicy` cmdlet to retrieve password policies for Workspace ONE Access Local Users and output the details.
- Renamed `Get-VCPasswordPolicy` to `Get-VcenterPasswordExpiration` to support better naming for password expiration.  
- Renamed `Set-VCPasswordPolicy` to `Set-VcenterPasswordExpiration` to support better naming for password expiration.  
- Renamed `Get-VCRootPasswordExpiry` to `Get-VcenterRootPasswordExpiration` to support better naming for password expiration.  
- Renamed `Set-VCPasswordExpiry` to `Set-VcenterRootPasswordExpiration` to support better naming for password expiration.
- Renamed `Get-WSAPasswordLockout` to Get-WsaAccountLockout to support better naming for account lockout.
- Renamed `Set-WSAPasswordLockout` to Set-WsaAccountLockout to support better naming for account lockout.
- Enhanced `Set-WsaPasswordPolicy` cmdlet to improve the output from the API.

### Deprecation

- Removed `Get-VCPasswordExpiry`
- Removed `Join-ESXiActiveDirectory`
- Removed `Add-ESXiDomainUser`
- Removed `Set-SRMLicenseConfig`
- Removed `Undo-SRMLicenseConfig`
- Removed `New-vSRPortGroup`
- Removed `Undo-vSRPortGroup`
- Removed `Set-vSRNetworkConfig`
- Removed `Undo-vSRNetworkConfig`
- Removed `New-vSRVMkernelPort`
- Removed `Undo-vSRVMkernelPort`
- Removed `New-vSREsxiStaticRoute`
- Removed `Undo-vSREsxiStaticRoute`
- Removed `Set-vSRIncomingStorageTraffic`
- Removed `Get-vSRIncomingStorageTraffic`
- Removed `Set-DRSolutionNetworkAdapter`
- Removed `Get-DRSolutionSummary`
- Removed `Get-DRSolutionNetworkConfig`
- Removed `Register-DRSolutionTovCenter`
- Removed `Test-VAMIConnection`
- Removed `Test-VAMIAuthentication`
- Removed `createVAMIAuthHeader`
- Removed `Request-VAMISessionId`

## v1.10.0 (2022-29-11)

- Enhanced `Install-SiteRecoveryManager` cmdlet to support an alternative path to the OVF Tool -vmwareOvfToolPath, and code improvements.
- Enhanced `Install-vSphereReplicationManager` cmdlet to support an alternative path to the OVF Tool -vmwareOvfToolPath and code improvements.
- Enhanced `Connect-DRSolutionTovCenter` cmdlet to support registration with any vCenter Server and code improvements and REST API function support.
- Added `Undo-DRSolutionTovCenter` cmdlet to support removing vCenter Server registration of vSphere Replication and Site Recovery Manager.
- Enhanced `Install-VamiCertificate` cmdlet to use new REST APIs for vSphere Replication and Site Recovery Manager appliances.
- Added `Add-VrmsNetworkAdapter` cmdlet to support adding a second nic to a vSphere Replication appliance.
- Added `Add-SrmLicenseKey` cmdlet to support adding and assigning a Site Recovery Manager license.
- Added `Undo-SrmLicenseKey` cmdlet to support removing a Site Recovery Manager license.
- Added `Add-VdsPortGroup` cmdlet to support creating a vSphere Distributed Switch port group and assigning a VLAN id.
- Added `Undo-VdsPortGroup` cmdlet to support removing a vSphere Distributed Switch port group.
- Added `internalCatchWriter` internal function to control and providing messages around API response codes.
- Added `Test-VrmsConnection` cmdlet to support checking the vSphere Replication appliance is responding.
- Added `Test-VrmsAuthentication` cmdlet to support checking authentication with the vSphere Replication appliance.
- Added `Request-VrmsToken` cmdlet to support requesting a session token for a vSphere Replication appliance.
- Added `Get-VrmsApplianceDetail` cmdlet to support getting information about a vSphere Replication appliance.
- Added `Set-VrmsApplianceState` cmdlet to restart or shutdown a vSphere Replication appliance.
- Added `Get-VrmsService` cmdlet to support retrieving the status of services running on the vSphere Replication appliance.
- Added `Set-VrmsService` cmdlet to start/stop/restart services running on a vSphere Replication appliance.
- Added `Get-VrmsNetworkAll` cmdlet to retrieve all network settings for a vSphere Replication appliance.
- Added `Get-VrmsNetworkDns` cmdlet to retrieve the DNS configuration for a vSphere Replication appliance.
- Added `Set-VrmsNetworkDns` cmdlet to configure DNS settings for a vSphere Replication appliance.
- Added `Get-VrmsNetworkInterface` cmdlet to retrieve the network interface configuration for a vSphere Replication appliance.
- Added `Set-VrmsNetworkInterface` cmdlet to configure a network interface for a vSphere Replication appliance.
- Added `Get-VrmsConfiguration` cmdlet to retrieve the registration configuration for a vSphere Replication appliance.
- Added `Set-VrmsConfiguration` cmdlet to register the vSphere Replication appliance with vCenter Server.
- Added `Remove-VrmsConfiguration` cmdlet to remove the vCenter Server registration for a vSphere Replication appliance.
- Added `Set-VrmsReplication` cmdlet to configure the replication filter IP Address for a vSphere Replication appliance.
- Added `Get-VrmsTask` cmdlet to retrieve tasks from a vSphere Replication appliance.
- Added `Get-VrmsVamiCertificate` cmdlet to retrieve the certificate of the VAMI interface of a vSphere Replication appliance
- Added `Set-VrmsVamiCertificate` cmdlet to install a new certificate for the VAMI interface of a vSphere Replication appliance.
- Added `Test-SrmConnection` cmdlet to support checking the Site Recovery Manager appliance is responding.
- Added `Test-SrmAuthentication` cmdlet to support checking authentication with the Site Recovery Manager appliance.
- Added `Request-SrmToken` cmdlet to support requesting a session token for a Site Recovery Manager appliance.
- Added `Get-SrmApplianceDetail` cmdlet to support getting information about a Site Recovery Manager appliance.
- Added `Set-SrmApplianceState` cmdlet to restart or shutdown a Site Recovery Manager appliance.
- Added `Get-SrmService` cmdlet to support retrieving the status of services running on the Site Recovery Manager appliance.
- Added `Set-SrmService` cmdlet to start/stop/restart services running on a Site Recovery Manager appliance.
- Added `Get-SrmNetworkAll` cmdlet to retrieve all network settings for a Site Recovery Manager appliance.
- Added `Get-SrmNetworkDns` cmdlet to retrieve the DNS configuration for a Site Recovery Manager appliance.
- Added `Set-SrmNetworkDns` cmdlet to configure DNS settings for a Site Recovery Manager appliance.
- Added `Get-SrmNetworkInterface` cmdlet to retrieve the network interface configuration for a Site Recovery Manager appliance.
- Added `Set-SrmNetworkInterface` cmdlet to configure a network interface for a Site Recovery Manager appliance.
- Added `Get-SrmConfiguration` cmdlet to retrieve the registration configuration for a Site Recovery Manager appliance.
- Added `Set-SrmConfiguration` cmdlet to register the Site Recovery Manager appliance with vCenter Server.
- Added `Remove-SrmConfiguration` cmdlet to remove the vCenter Server registration for a Site Recovery Manager appliance.
- Added `Get-SrmTask` cmdlet to retrieve tasks from a Site Recovery Manager appliance.
- Added `Get-SrmVamiCertificate` cmdlet to retrieve the certificate of the VAMI interface of a Site Recovery Manager appliance.
- Added `Set-SrmVamiCertificate` cmdlet to install a new certificate for the VAMI interface of a Site Recovery Manager appliance.
- Added `Undo-SiteRecoveryManager` to remove the Site Recovery Manager virtual appliance.
- Added `Undo-vSphereReplicationManager` to remove the vSphere Replication virtual appliance.
- Added `Add-EsxiVMkernelPort` cmdlet to create ESXi VMKernel port for vSphere Replication Traffic flexibility.
- Added `Undo-EsxiVMkernelPort` cmdlet to remove ESXi VMKernel port for vSphere Replication Traffic flexibility.
- Added `Add-EsxiVrmsStaticRoute` cmdlet to provide ESXi static route configuration flexibility.
- Added `Undo-EsxiVrmsStaticRoute` cmdlet to provide ESXi static route removal flexibility.

## v1.9.0 (2022-25-10)

- Fixed `ilaDeployVrealizeLogInsight.ps1` where the call for cmdlet named Add-vRLISmtpConfiguration had a typo.
- Enhanced `Export-WsaJsonSpec` cmdlet to support deploying a Standard (single node) Workspace ONE Access via vRealize Suite Lifecycle Manager.
- Enhanced `New-WSADeployment` cmdlet to support deploying a Standard (single node) Workspace ONE Access via vRealize Suite Lifecycle Manager.
- Enhanced `Export-vROPSJsonSpec` cmdlet to support deploying a smaller footprint of vRealize Operations for nested environments.
- Enhanced `New-vROPSDeployment` cmdlet to support smaller footprint of vRealize Operations for nested environments.
- Enhanced `ilaConfigureVrealizeLogInsight.ps1` Sample Script to detect Standard versus Clustered Workspace ONE.
- Enhanced `iomDeployVrealizeOperations.ps1` Sample Script to support smaller footprint of vRealize Operations for nested environments.
- Enhanced `ilaDeployVrealizeLogInsight.ps1` Sample Script to skip trying to configure Archive and Retention settings when no NFS details are provided.
- Enhanced `Enable-SupervisorCluster` cmdlet to check for the existence of the Supervisor Cluster.
- Added `Enable-vRLIContentPack` cmdlet to support install of content packs from the vRealize Log Insight in-product marketplace.
- Added `Update-vRLIContentPack` cmdlet to support update of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vRLIMarketplaceMetadata` cmdlet to support install and upgrade of content packs from the vRealize Log Insight in-product marketplace.
- Added `Install-vRLIContentPack` cmdlet to support installation of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vRLIContentPack` cmdlet to support install and upgrade of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vROpsLogForwardingConfig` cmdlet to support verification of vRealize Operations log forwarding.
- Added `Get-vROpsLogForwarding` cmdlet to support verification of vRealize Operations log forwarding.
- Added `Add-vROPSAdapterVr` cmdlet to support adding a vSphere Replication adapter to vRealize Operations.
- Added `Add-vROPSAdapterSrm` cmdlet to support adding a Site Recovery Manager adapter to vRealize Operations.
- Added `Get-vROPSAlertDefinition` cmdlet a sub-function to obtain alert definition details from vRealize Operations.
- Added `vrops-srm-notifications.csv` Sample Notification file for configuring Site Recovery Manager alert notifications in vRealize Operations.
- Added `Remove-vRLIAgentGroup` cmdlet a sub-function to support removing agent groups from vRealize Log Insight.
- Added `Undo-vRLIAgentGroup` cmdlet to support removing an agent group from vRealize Log Insight.
- Added `Add-StorageFolder` cmdlet to support adding a storage folder in vCenter Server.
- Updated `Export-vRLIJsonSpec` cmdlet to define vRealize Log Insight v8.8.2 as the default install for VCF 4.5.
- Updated `Export-vRAJsonSpec` cmdlet to define vRealize Automation v8.8.2 as the default install for VCF 4.5.
- Updated `Undo-vROPSAdapter` cmdlet to support removing VrAdpater and SrmAdapter adapter types from vRealize Operations.
- Updated `Undo-vROPSCredential` cmdlet to support removing VrAdpater and SrmAdapter credentials from vRealize Operations.
- Updated Sample Scripts in the SampleScripts\ila folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `ilaDeployVrealizeLogInsight.ps1`
  - `ilaConfigureVrealizeLogInsight.ps1`
  - `ilaUndoVrealizeLogInsight.ps1`
- Updated Sample Scripts in the SampleScripts\iam folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `iamConfigureVsphere.ps1`
  - `iamConfigureNsx.ps1`
  - `iamConfigureWorkspaceOne.ps1`
  - `iamUndoDeployment.ps1`
- Updated Sample Scripts in the SampleScripts\dri folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `driConfigureSupervisorCluster.ps1`
  - `driDeployTanzuCluster.ps1`
  - `driUndoDeployment.ps1`
- Updated Sample Scripts in the SampleScripts\ila folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `ilaDeployVrealizeLogInsight.ps1`
  - `ilaConfigureVrealizeLogInsight.ps1`
  - `ilaUndoVrealizeLogInsight.ps1`
- Updated Sample Scripts in the SampleScripts\iom folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `iomConfigureVrealizeOperations.ps1`
  - `iomDeployVrealizeOperations.ps1`
- Added Sample Scripts in the SampleScripts\pca folder, uses the Planning and Preparation Workbook as the input source:
  - `pcaDeployVrealizeAutomation.ps1`
- Added Sample Scripts in the SampleScripts\iom folder, to configure Solution Interoperability for Intelligent Operations Management:
  - `iomSolutionInteroperability.ps1`
- Added Sample Scripts in the SampleScripts\ila folder, to configure Solution Interoperability for for Intelligent Logging and Analytics:
  - `ilaSolutionInteroperability.ps1`
  - `ilaUndoSolutionInteroperability.ps1`
- Added Sample Scripts in the SampleScripts\iam folder, to configure Solution Interoperability for Identity and Access Management:
  - `iamSolutionInteroperability.ps1`

## v1.8.0 (2022-27-09)

- Enhanced `Request-CSPToken` cmdlet to request a token from VMware Cloud.
- Enhanced `Update-vRACloudAccountZone` and `Update-vRACloudZone` cmdlets to support placement policy for cloud zones in vRealize Automation.
- Enhanced `Confirm-PSModule` cmdlet so its an exported function and can be executed on the command line.
- Enhanced `Enable-vROPSManagementPack` cmdlet to support Site Recovery Manager and vSphere Replication Management Packs.
- Renamed to `Get-CSPPoxyAppliance` cmdlet to `Get-CloudProxy` and added:
  - `-environment` switch to support Production and Staging VMC
  - Support for both Cloud Proxy and Cloud Extensibility Proxy.
  - Support for either downloading or simply providing the URL path.
  - Support for downloading on Core (Linux, Windows and Mac).
- Added region blocks for easier code navigation.
- Added the vRealize Automation Cloud to vSphere integration role for Cloud Assembly.
- Added the vRealize Suite Lifecycle Manager to vSphere integration role.
- Added `Test-vROPsAdapterStatus` and `Test-vROPsAdapterStatusByType` cmdlets to test the status vRealize Operations adapters.
- Added `New-vRAvROPSIntegrationItem` cmdlet to configure vRealize Operations Manager integration in vRealize Automation.
- Added `Undo-vRAvROPsIntegrationItem` cmdlet to remove vRealize Operations Manager integration from vRealize Automation.
- Added `Add-vRAIntegrationItem` cmdlet to add an external system to vRealize Automation.
- Added `Test-vRAIntegrationItem` cmdlet to test an integration item in vRealize Automation.
- Added `Remove-vRAIntegrationItem` cmdlet to remove an integration item from vRealize Automation.
- Added `Get-CloudProxyOtk` cmdlet to retrieve the One Time Key (OTK) for both the Cloud Proxy and the Cloud Extensibility Proxy.
- Added `Get-vROVersion` cmdlet with support for standalone, embedded, and cloud extensibility proxy vRealize Orchestrator instance.
- Added `Get-CEPWorkflow` cmdlet to return workflows from cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Invoke-CEPWorkflow` cmdlet to start a Workflow on a cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Get-CEPWorkflowExecution` cmdlet to return the Workflow Execution ID from a cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Get-CEPWorkflowExecutionState` cmdlet to return the Workflow Execution State from a cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Add-CEPTrustedCertificate` cmdlet to add a trusted cert to a cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Add-CEPvCenterServer` cmdlet to add a vCenter server to a cloud extensibility proxy's vRealize Orchestrator instance.
- Added `Update-vROPSvRAAdapterCredential` cmdlet to support updating the vRealize Automation integration credential in vRealize Operations Manager.
- Added `Get-vRAAPIVersion` and `Get-vRAIntegrationDetail` cmdlets to support updating the placement policy for cloud zones in vRealize Automation.
- Added `Get-ESXiPasswordPolicy` cmdlet to return the password expiration policy for ESXi.
- Added `Get-VCServerPasswordPolicy` cmdlet to return the password expiration policy for vCenter Server.
- Added `Set-EsxiPasswordExpirationPeriod` cmdlet to set the password expiration period on an ESXi host in number of days.
- Added Sample Script in SampleScripts\ppm folder, Password Policy Manager to enable auditing and configuration of password policies across VMware Cloud Foundation.
  - `passwordPolicyManager.ps1` generates and audit report or configures the password policies.
  - `sampleConfigurationFull.json` configuration JSON covering all product configuration parameters.
  - `sampleConfigurationSimple.json` configuration JSON covering default configuration parameters.
  - `README.md` providing details on how to use Password Policy Manager.
- Added `Get-vRAvRLIConfig` cmdlet to retrieve the vRealize Log Insight logging configuration (CFAPI) on vRealize Automation.
- Added `Set-vRAvRLIConfig` cmdlet to configure the vRealize Log Insight logging configuration (CFAPI) on vRealize Automation.
- Added `Remove-vRAvRLIConfig` cmdlet to remove the vRealize Log Insight logging configuration (CFAPI) on vRealize Automation.

## v1.7.0 (2022-31-05)

- Added `Set-vSRNetworkConfig` cmdlet to configure a secondary ethernet adapter and the required routing for vSphere Replication appliances in the protected and recovery sites
- Added `Undo-vSRNetworkConfig` cmdlet to remove the secondary ethernet adapter and its configuration from vSphere Replication appliances in the protected and recovery sites
- Added `New-vSRVMkernelPort` cmdlet to create VMkernel ports on ESXi hosts for vSphere Replication traffic in the protected and recovery sites.
- Added `Undo-vSRVMkernelPort` cmdlet to remove VMkernel ports on ESXi hosts for vSphere Replication traffic in the protected and recovery sites.
- Added `New-vSREsxiStaticRoute` cmdlet to create a static route on ESXi hosts for vSphere Replication traffic in the protected and recovery sites.
- Added `Undo-vSREsxiStaticRoute` cmdlet to remove a static route on ESXi hosts for vSphere Replication traffic in the protected and recovery sites.
- Added `Set-SRMLicenseConfig` cmdlet to configure the license for Site Recovery Manager in the protected and recovery sites.
- Added `Undo-SRMLicenseConfig` cmdlet to remove the license configuration from Site Recovery Manager in the protected and recovery sites.

## v1.6.0 (2022-28-04)

- Fixed `Add-vROPSAdapterNsxt` cmdlet so that the description is maintained when validating the certificate of the NSX-T Adapter
- Added `Add-vROPSAdapterIdentityManager` cmdlet to support adding a new Identity Manager Adapter in vRealize Operations Manager.
- Added `Undo-vROPSAdapter` cmdlet to support the removal of an Adapter from vRealize Operations Manager.
- Added `Undo-vROPSCredential` cmdlet to support the removal of an Adapter Credential from vRealize Operations Manager.
- Added `Update-vROPSAdapterCollecterGroup` cmdlet tto support updating the collector group for an Adapter in vRealize Operations Manager
- Added `Set-vRADnsConfig` cmdlet to configure the DNS server(s) and DNS search domain(s) on vRealize Automation to use custom settings.
- Added `Undo-vRADnsConfig` cmdlet to revert the DNS configuration of vRealize Automation to match SDDC Manager.
- Added `Set-vRANtpConfig` cmdlet to configure the NTP server(s) on vRealize Automation to use custom settings.
- Added `Undo-vRANtpConfig` cmdlet to revert the NTP configuration of vRealize Automation to match SDDC Manager.
- Added `Add-SRMMapping` cmdlet to create a mapping between objects (folder, network, or compute resource) in the protected and failover VCF
instances in Site Recovery Manager
- Added `Undo-SRMMapping` cmdlet to remove a mapping between objects (folder, network, or compute resource) in the protected and failover VCF
instances in Site Recovery Manager
- Added `New-SRMSitePair` cmdlet to create a site pair between Site Recovery Manager instances
- Added `Undo-SRMSitePair` cmdlet to remove an existing site pair between Site Recovery Manager instances.
- Added `New-vSRPortGroup` cmdlet to create port groups for vSphere Replication appliances in the protected and recovery sites.
- Added `Undo-vSRPortGroup` cmdlet to remove port groups for vSphere Replication appliances in the protected and recovery sites.

## v1.5.0 (2022-29-03)

- Enhanced `Add-SsoPermission` cmdlet to verify that the SSO Group exists in vCenter Single Sign-On.
- Enhanced `Enable-SupervisorCluster` cmdlet additional enhancements around pre-validation of inputs.
- Enhanced `Add-vRLIAgentGroup` cmdlet to support adding multiple Agent Groups of the same type.
- Enhanced `Add-vROPSAdapterNsxt` cmdlet to support defaulting to Default collector group rather than using custom remote collector group.
- Enhanced `Add-vROPSAdapterPing` cmdlet to support defaulting to Default collector group rather than using custom remote collector group.
- Enhanced `Set-WorkspaceOneNtpConfig` cmdlet to support updating NTP configuration for Clustered Workspace ONE Access
- Added `Undo-WorkspaceOneNsxtIntegration` cmdlet to disable the integration between NSX Manager and Workspace ONE Access.
- Added `Undo-SsoPermission` cmdlet to remove a user or group's access from vCenter Single Sign-On.
- Added `Undo-NsxtVidmRole` cmdlet to remove user or group's access from NSX-T Data Center.
- Added `Undo-ClusterGroup` cmdlet to remove a vSphere DRS Cluster Group.
- Added `Undo-vCenterGlobalPermission` cmdlet to remove vSphere Global Permissions from vCenter Server.
- Added `Undo-vSphereRole` cmdlet to remove a custom vSphere Role from vCenter Server.
- Added `Undo-AntiAffinityRule` cmdlet to remove an Anti-Affinity Rule from vCenter Server.
- Added `Undo-VmStartupRule` cmdlet to remove a VM to VM vSphere DRS Rule from vCenter Server.
- Added `Undo-WorkspaceOneDirectoryGroup` cmdlet to remove Active Directory Groups from Workspace ONE Access Directory sync.
- Added `Add-SupervisorClusterLicense` cmdlet to install and assign a license to a Tanzu Kubernetes Cluster.
- Added `Request-SignedCertificate` cmdlet to request a signed certificate from a Microsoft Certificate Authority.
- Added `Set-vRSLCMDnsConfig` cmdlet to update the DNS configuration of vRealize Suite Lifecycle Manager.
- Added `Undo-vRSLCMDnsConfig` cmdlet to revert the DNS configuration of vRealize Suite Lifecycle Manager to match SDDC Manager.
- Added `Add-vRSLCMNtpServer` cmdlet to add NTP Servers to vRealize Suite Lifecycle Manager.
- Added `Undo-vRSLCMNtpServer` cmdlet to revert the NTP configuration of vRealize Suite Lifecycle Manager to match SDDC Manager.
- Added `Set-WorkspaceOneDnsConfig` cmdlet to update the DNS configuration of Workspace ONE Access.
- Added `Undo-WorkspaceOneDnsConfig` cmdlet to revert the DNS configuration of Workspace ONE Access to match SDDC Manager.
- Added `Set-vROPSDnsConfig` cmdlet to update the DNS configuration of vRealize Operations Manager.
- Added `Undo-vROPSDnsConfig` cmdlet to revert the DNS configuration of vRealize Operations Manager to match SDDC Manager.
- Added `Add-vROPSNtpServer` cmdlet to add NTP Servers to vRealize Operations Manager.
- Added `Undo-vROPSNtpServer` cmdlet to revert the NTP configuration of vRealize Operations Manager to match SDDC Manager.
- Added Sample Scripts in the SampleScripts\iam folder, each script uses the Planning and Preparation Workbook as the input source:
  - `iamUndoDeployment.ps1` automates the removal of the Identity and Access Management for VMware Cloud Foundation validated solution.
- Updated Sample Scripts in the SampleScripts\iam folder, each script uses the Planning and Preparation Workbook as the input source:
  - `iamConfigureWorkspaceOne.ps1` updated input values to use latest VCF 4.4.x Planning and Prep Workbook.
 Added Sample Scripts in the SampleScripts\dri folder, each script uses the Planning and Preparation Workbook as the input source:
  - `driConfigureSupervisorCluster.ps1` automates the configuration of vSphere, NSX and enables the Supervisor Cluster.
  - `driDeployTanzuCluster.ps1` automates the the deployment of a Tanzu Kubernetes Cluster.
  - `driUndoDeployment.ps1` automates the removal of the Developer Ready Infrastructure for VMware Cloud Foundation validated solution.
Added Sample Scripts in the SampleScripts\ila folder, each script uses the Planning and Preparation Workbook as the input source:
    - `ilaUndoVrealizeLogInsight.ps1` automates the removal of Intelligent Logging and Analytics for VMware Cloud Foundation validated solution.

## v1.4.0 (2022-22-02)

- Enhanced all Developer Ready Infrastructure Solution cmdlets for better error handling and message output.
- Added `Undo-NetworkSegment` cmdlet to remove an NSX segment from an NSX Management Cluster.
- Added `Undo-PrefixList` cmdlet to remove an NSX Prefix List from an NSX Management Cluster.
- Added `Undo-RouteMap` cmdlet to remove an NSX Route Map from an NSX Management Cluster.
- Added `Undo-DatastoreTag` cmdlet to remove the vSphere Tag and Category from a datastore in vCenter Server.
- Added `Undo-StoragePolicy` cmdlet to remove a VM vSphere Storage Policy from vCenter Server.
- Added `Undo-Registry` cmdlet to disable the Embedded Harbor Registry on the Supervisor Cluster.
- Added `Undo-SupervisorCluster` cmdlet to remove the Supervisor Cluster.
- Added `Undo-ContentLibrary` cmdlet to remove a Content Library from the Workload Domain vCenter Server.
- Added `Undo-Namespace` cmdlet to remove a Namespace from the Supervisor Cluster.
- Added `Undo-NamespacePermission` cmdlet to remove permissions from a Namespace.
- Added `Undo-TanzuKubernetesCluster` cmdlet to remove a Tanzu Kubernetes Cluster from the Supervisor Cluster.
- Added `Add-NsxtNodeProfileSyslogExporter` cmdlet to add a syslog exporter to the default node profile or specified node profile id.
- Added `Undo-NsxtNodeProfileSyslogExporter` cmdlet to remove all syslog exporter from the default node profile or specified node profile id.

## v1.3.0 (2022-25-01)

- Fixed `New-vRSLCMLockerLicense` cmdlet where depending on the speed of the system the license would be added but POST_VALIDATION would fail.
- Enhanced all Identity and Access Management Solution cmdlets for better error handling and message output.
- Enhanced all vRealize Operations Manager cmdlets for better error handling and message output.
- Enhanced all vRealize Log Insight cmdlets for better error handling and message output.
- Enhanced all vRealize Automation cmdlets for better error handling and message output.
- Enhanced `Set-vCenterPermission` cmdlet to set permissions on non-nested folders.
- Enhanced `Enable-SupervisorCluster` cmdlet with better pre-validation.
- Renamed `Add-NsxtVidmGroupRole` cmdlet to `Add-NsxtVidmRole`, to add support for assigning both users and groups roles in NSX-T Data Center.
- Added `Add-ResourcePool` cmdlet to create a resource pool in the Workload Domain specified.
- Added `Undo-ResourcePool` cmdlet to remove a resource pool based on the Workload Domain specified.
- Added `Update-vRAOrganizationDisplayName` cmdlet to configure the Organization Display Name in vRealize Automation.
- Added `Add-vROPSAdapterPing` cmdlet to add a Ping Adapter to vRealize Operations Manager.
- Added `Enable-vROPSManagementPack` cmdlet to upload and install the SDDC Health Management Pack to vRealize Operations Manager.
- Added `Update-vROPSAdapterSddcHealth` cmdlet to rename the SDDC Health Adapters in vRealize Operations Manager.
- Added `Add-vROPSAdapterSddcHealth` cmdlet to add SDDC Health Adapters for the Remote Collectors in vRealize Operations Manager.
- Added `Add-vROPSAlertPluginEmail` cmdlet to add an Email Alert Plugin to vRealize Operations Manager.
- Added `Register-vROPSManagementPack` cmdlet to activate / deactivate Native Management Packs in vRealize Operations Manager.
- Added `Import-vROPSUserGroup` cmdlet to import a user group and assign access in vRealize Operations Manager.
- Added `Add-vROvCenterServer` cmdlet to add a workload domain vCenter Server instance to the embedded vRealize Orchestrator.
- Added `Remove-vROvCenterServer` cmdlet to remove a workload domain vCenter Server instance from the embedded vRealize Orchestrator.
- Added `Add-vROTrustedCertificate` cmdlet to import a trusted certificate to the embedded vRealize Orchestrator using a PEM-encoded file.
- Added `Import-vROPSNotification` cmdlet to import notifications using comma separated value file to vRealize Operations Manager.
- Added `Add-vRANotification` cmdlet to configure the smtp notification settings in vRealize Automation.
- Added `New-vRACloudAccount` cmdlet to add Cloud Accounts for a Workload Domains vCenter Server and NSX Management Cluster in vRealize Automation.
- Added `Undo-vRACloudAccount` cmdlet to remove the Cloud Accounts for a Workload Domains vCenter Server and NSX Management Cluster in vRealize Automation.
- Added `Update-vRACloudAccountZone` cmdlet to update the configuration of the Cloud Account Zone for a Workload Domain in vRealize Automation.
- Added `Add-vRAUser` cmdlet to add an organization role and a service role to a user account in vRealize Automation.
- Added `Undo-vRAUser` cmdlet to remove an organization role and all service roles from a user account in vRealize Automation.
- Added `Add-vRAGroup` cmdlet to add an organization role and a service role to a group in vRealize Automation.
- Added `Undo-vRAGroup` cmdlet to remove an organization role and all service roles from a group account in vRealize Automation.
- Added `Undo-IdentitySource` cmdlet to remove an Identity Provider from vCenter Server.
- Added `Undo-SddcManagerRole` cmdlet to remove access for a user in SDDC Manager.
- Added `Add-SsoUser` cmdlet to add a Single Sign-On domain user.
- Added `New-vRSLCMDatacenter` cmdlet to add a datacenter in vRealize Suite Lifecycle Manager.
- Added `Undo-vRSLCMDatacenter` cmdlet to remove a datacenter from vRealize Suite Lifecycle Manager.
- Added `New-vRSLCMDatacenterVcenter` cmdlet to add a vCenter Server to a datacenter in vRealize Lifecycle Manager.
- Added `Export-WSAJsonSpec` cmdlet to generate the deployment JSON for Clustered Workspace ONE Access.
- Added `New-WSADeployment` cmdlet to trigger the deployment of Clustered Workspace ONE Access via vRealize Suite Lifecycle Manager.
- Added `Add-WorkspaceOneDirectoryConnector` cmdlet to add a connector to the Identity Provider in Workspace ONE Access.
- Added `Add-vRLIAlertDatacenter` cmdlet to create vRealize Log Insight alerts by datacenter.
- Added `Add-vRLIAlertVirtualMachine` cmdlet to create vRealize Log Insight alerts by virtual machine.
- Added `Undo-vRLIAlert` cmdlet to remove alerts from vRealize Log Insight.
- Added Sample Notification Templates in the SampleNotifications folder:
  - `vrli-vcf-datacenter.json` defines the vRealize Log Insight alerts that should be configured for VMware Cloud Foundation at the datacenter level.
  - `vrli-vcf-vmVrslcm.json` defines the vRealize Log Insight alerts that should be configured for vRealize Suite Lifecycle Manager.
- Added Sample Scripts in the SampleScripts\iom folder, each script uses the Planning and Preparation Workbook as the input source:
  - `iomDeployVrealizeOperations.ps1` automates the install and config of vRealize Operations for Intelligent Operations Management for VMware Cloud Foundation.
  - `iomConfigureVrealizeOperations.ps1` automates the integration config of vRealize Operations for Intelligent Operations Management for VMware Cloud Foundation.

## v1.2.0 (2021-30-11)

- Fixed `Add-GlobalPermission` where an error is thrown when Internet Explorer has not been launched in the operating system.
- Fixed `Set-DatastoreTag` where it was failing to create a single tag and category when multiple vCenter Servers in the Single-Sign On domain.
- Fixed `Add-StoragePolicy` where is was failing to add the storage policy when multiple vCenter Servers in the Single-Sign On domain.
- Enhanced `Move-VMtoFolder` cmdlet to check the name of VM provided and skip if it does not exist.
- Enhanced `Add-WorkspaceOneDirectory` cmdlet so that it can be used with Clustered Workspace ONE Access.
- Enhanced `Set-WorkspaceOneSmtpConfig` cmdlet to skip the configuration if the SMTP Server configuration is already performed.
- Added `Export-vRLIJsonSpec` cmdlet to generate the Json specification file needed to deploy vRealize Log Insight via vRealize Lifecycle Suite Manager.
- Added `New-vRLIDeployment` cmdlet to deploy vRealize Log Insight via vRealize Lifecycle Suite Manager in VMware Cloud Foundation aware mode.
- Added `Add-vRLIAuthenticationWSA` cmdlet to support configuring Workspace ONE Access integration with vRealize Log Insight.
- Added `Add-WorkspaceOneDirectoryGroup` cmdlet to Sync additional Active Directory groups with Workspace ONE Access.
- Added `Export-vROPSJsonSpec` cmdlet to generate the Json specification file needed to deploy vRealize Operations Manager via vRealize Lifecycle Suite Manager.
- Added `New-vROPSDeployment` cmdlet to deploy vRealize Operations Manager via vRealize Lifecycle Suite Manager in VMware Cloud Foundation aware mode.
- Added `Export-vRASJsonSpec` cmdlet to generate the Json specification file needed to deploy vRealize Automation via vRealize Lifecycle Suite Manager.
- Added `New-vRADeployment` cmdlet to deploy vRealize Automation via vRealize Lifecycle Suite Manager in VMware Cloud Foundation aware mode.
- Added `Install-vRLIPhotonAgent` cmdlet to download, install and configure the vRealize Log Insight Agent on Photon Operating System.
- Added `Add-vRLIAgentGroup` cmdlet to create an Agent Group in vRealize Log Insight.
- Added `Register-vRLIWorkloadDomain` cmdlet to connect/disconnect a Workload Domain with vRealize Log Insight.
- Added `Set-vRLISyslogEdgeCluster` cmdlet to configure the Syslog settings for each NSX Edge node within a Workload Domains NSX Edge Cluster.
- Added `Add-vRLISmtpConfiguration` cmdlet to configure the SMTP Server settings for vRealize Log Insight.
- Added `Add-vRLILogArchive` cmdlet to configure Email Notifications, Retention and Archive Location for vRealize Log Insight.
- Added `Register-vROPSWorkloadDomain` cmdlet to connect/disconnect a Workload Domain with vRealize Operations Manager.
- Added `Add-vROPSCurrency` cmdlet to configure the currency for vRealize Operations Manager.
- Added `Add-vROPSGroupRemoteCollectors` cmdlet to create a Remote Collector Group and assign the remote collectors in vRealize Operations Manager.
- Added `Update-vROPSAdapterVcenter` cmdlet to update the Remote Collector Group assignment for the vCenter Server Adapter in vRealize Operations Manager.
- Added `Add-vROPSCredentialNsxt` cmdlet to create an NSX credential in vRealize Operations Manager.
- Added `Add-vROPSAdapterNsxt` cmdlet to create an NSX Adapter and Start Collection in vRealize Operations Manager.
- Added `Undo-vRSLCMLockerPassword` cmdlet to remove a password from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-vRSLCMLockerCertificate` cmdlet to remove a certificate from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-vRSLCMLockerLicense` cmdlet to remove a license from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-VMFolder` cmdlet to remove a folder from vCenter Server.
- Added `Add-vRLIAuthenticationGroup` cmdlet to assign vRealize Log Insight roles to Workspace ONE Access Groups.
- Added Sample Scripts in the SampleScripts\iam folder, each script uses the Planning and Preparation Workbook as the input source:
  - `iamConfigureVsphere.ps1` automates all the configuration of vSphere/SDDC Manager elements for Identity and Access Management for VMware Cloud Foundation.
  - `iamConfigureWorkspaceOne.ps1` automates all the configuration of Workspace ONE Access elements for Identity and Access Management for VMware Cloud Foundation.
    - `iamConfigureNsx.ps1` automates all the configuration of the NSX elements for Identity and Access Management for VMware Cloud Foundation.
- Added Sample Scripts in the SampleScripts\ila folder, each script uses the Planning and Preparation Workbook as the input source:
  - `ilaDeployVrealizeLogInsight.ps1` automates the install and config of vRealize Log Insight for Intelligent Logging and Analytics for VMware Cloud Foundation.
  - `ilaConfigureVrealizeLogInsight.ps1` automates the integration config of vRealize Log Insight for Intelligent Logging and Analytics for VMware Cloud Foundation.
- Added `New-SupervisorClusterCSR` cmdlet to create a new certificate signing request for the defined Supervisor Cluster.
- Added `Add-SupervisorClusterCertificate` cmdlet to add a signed TLS certificate for the defined Supervisor Cluster.
- Added `Add-NamespaceVmClass` cmdlet to add an existing VM Class to a Supervisor Namespace.

## v1.1.0 (2021-05-10)

- Fixed `Set-vCenterPermission` where a failure can occur if the workload domain does not follow the same naming as the vCenter Server.
- Enhanced `Add-VmStartupRule` to check both VM Groups exists before attempting to create the VM-to-VM Group.
- Enhanced `Add-ContentLibrary` to support creation of both Published and Subscription Content Libraries.
- Added `New-vRSLCMLockerPassword` cmdlet to support adding passwords to the vRealize Lifecycle Suite Manager Locker.
- Added `New-vRSLCMLockerLicense` cmdlet to support adding licenses to the vRealize Lifecycle Suite Manager Locker.
- Added `Add-VmGroup` cmdlet to support adding Virtual Machines to existing VM Groups (availability Zones in particular).
- Added a number of new functions to support automation of the Site Protection and Disaster Recovery solution:
  - `Install-SiteRecoveryManager`
  - `Install-vSphereReplicationManager`
  - `Connect-DRSolutionTovCenter`
  - `Install-VAMICertificate`
  - `Backup-VMOvfProperties`
  - `Restore-VMOvfProperties`
  - `Copy-vRealizeLoadBalancer`

## v1.0.1 (2021-16-09)

- Fixed the way Certificate file is read in `Add-WSALdapDirectory` to avoid truncation of certificate data.
- Fixed `Add-ContentLibrary` where creation using subscription URL was failing.
- Fixed `Add-VMFolder` where it was creating a folder in each vCenter Server in the Single Sign-On Domain.

## v1.0.0 (2021-24-08)

- Initial Module Release
