# Release History

## v1.9.0 (Not Released)

- Enhanced `Export-WsaJsonSpec` cmdlet to support deploying a Standard (single node) Workspace ONE Access via vRealize Suite Lifecycle Manager.
- Enhanced `New-WSADeployment` cmdlet to support deploying a Standard (single node) Workspace ONE Access via vRealize Suite Lifecycle Manager.
- Added `Enable-vRLIContentPack` cmdlet to support installation of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vRLIMarketplaceMetadata` cmdlet to support installation of content packs from the vRealize Log Insight in-product marketplace.
- Added `Install-vRLIContentPack` cmdlet to support installation of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vRLIContentPack` cmdlet to support installation of content packs from the vRealize Log Insight in-product marketplace.
- Added `Get-vROpsLogForwardingConfig` to support verification of vRealize Operations log forwarding.
- Added `Get-vROpsLogForwarding` to support verification of vRealize Operations log forwarding.
- Updated Sample Scripts in the SampleScripts\ila folder, to support the VCF 4.5.x Planning and Prep Workbook:
  - `ilaDeployVrealizeLogInsight.ps1`
  - `ilaConfigureVrealizeLogInsight.ps1`
  - `ilaUndoVrealizeLogInsight.ps1`

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
