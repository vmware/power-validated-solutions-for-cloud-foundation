# Release History
## v1.2.0 (2021-30-11)
- Fixed `Add-GlobalPermission` where an error is thrown when Internet Explorer has not been launched in the operating system.
- Fixed `Set-DatastoreTag` where it was failing to create a single tag and catagory when multiple vCenter Servers in the Single-Sign On domain.
- Fixed `Add-StoragePolicy` where is was failing to add the storage policy when multiple vCenter Servers in the Single-Sign On domain
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
- Added `Add-vRLIAgentGroup` cmdlet to create an Agent Group in vRealize Log Insight
- Added `Register-vRLIWorkloadDomain` cmdlet to connect/disconnect a Workload Domain with vRealize Log Insight.
- Added `Set-vRLISyslogEdgeCluster` cmdlet to configure the Syslog settings for each NSX Edge node within a Workload Domains NSX Edge Cluster.
- Added `Add-vRLISmtpConfiguation` cmdlet to configure the SMTP Server settings for vRealize Log Insight
- Added `Add-vRLILogArchive` cmdlet to configure Email Notifications, Retention and Archive Location for vRealize Log Insight
- Added `Register-vROPSWorkloadDomain` cmdlet to connect/disconnect a Workload Domain with vRealize Operations Manager.
- Added `Add-vROPSCurrency` cmdlet to configure the currency for vRealize Opertations Manager
- Added `Add-vROPSGroupRemoteCollectors` cmdlet to create a Remote Collector Group and assign the remote collectors in vRealize Operations Manager
- Added `Update-vROPSAdapterVcenter` cmdlet to update the Remote Collector Group assignment for the vCenter Server Adapter in vRealize Operations Manager
- Added `Add-vROPSCredentialNsxt` cmdlet to create an NSX credential in vRealize Operations Manager
- Added `Add-vROPSAdapterNsxt` cmdlet to create an NSX Adapter and Start Collection in vRealize Operations Manager
- Added `Undo-vRSLCMLockerPassword` cmdlet to remove a password from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-vRSLCMLockerCertificate` cmdlet to remove a certificate from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-vRSLCMLockerLicense` cmdlet to remove a license from the vRealize Suite Lifecycle Manager Locker.
- Added `Undo-VMFolder` cmdlet to remove a folder from vCenter Server
- Added `Add-vRLIAuthenticationGroup` cmdlet to assign vRealize Log Insight roles to Workspace ONE Access Groups.
- Added Sample Scripts in the SampleScripts\iam folder, each script uses the Planning and Preparation Workbook as the input source:
    - `iamConfigureVsphere.ps1` automates all the configuration of vSphere/SDDC Manager elements for Identity and Access Management for VMware Cloud Foundation.
    - `iamConfigureWorkspaceOne.ps1` automates all the configuration of Workspace ONE Access elements for Identity and Access Management for VMware Cloud Foundation.
    - `iamConfigureNsx.ps1` automates all the configuration of the NSX elements for Identity and Access Management for VMware Cloud Foundation.
- Added Sample Scripts in the SampleScripts\ila folder, each script uses the Planning and Preparation Workbook as the input source:
    - `ilaDeployVrealizeLogInsight.ps1` automates the install and config of vRealize Log Insight for Intelligent Logging and Analytics for VMware Cloud Foundation.
    - `ilaConfigureVrealizeLogInsight.ps1` automates the integration config of vRealize Log Insight for Intelligent Logging and Analytics for VMware Cloud Foundation.
- Added `New-SupervisorClusterCSR` cmdlet to create a new certificate signing request for the defined Supervisor Cluster
- Added `Add-SupervisorClusterCertificate` cmdlet to add a signed TLS certificate for the defined Supervisor Cluster
- Added `Add-NamespaceVmClass` cmdlet to add an existing VM Class to a Supervisor Namespace

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