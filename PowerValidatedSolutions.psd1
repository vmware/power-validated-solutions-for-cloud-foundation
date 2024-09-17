# Copyright 2023-2024 Broadcom. All Rights Reserved.
# SPDX-License-Identifier: BSD-2

# Module manifest for module 'PowerValidatedSolutions'
# Generated by: Broadcom
# Generated on: 2024-08-19

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'PowerValidatedSolutions.psm1'

    # Version number of this module.
    ModuleVersion = '2.12.0.1031'

    # ID used to uniquely identify this module
    GUID              = 'a6dfed7b-65d2-4da2-bdcc-7f3d3df9b75d'

    # Author of this module
    Author            = 'Broadcom'

    # Company or vendor of this module
    CompanyName       = 'Broadcom'

    # Copyright statement for this module
    Copyright         = 'Copyright 2023-2024 Broadcom. All Rights Reserved.'

    # Description of the functionality provided by this module
    Description       = 'PowerShell Module for VMware Validated Solutions'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '7.2.0'

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('Export-IamJsonSpec', 'Test-IamPrerequisite', 'Request-IamMscaSignedCertificate', 'Invoke-IamDeployment', 'Invoke-UndoIamDeployment', 'Add-IdentitySource', 'Undo-IdentitySource', 'Add-SddcManagerRole', 'Undo-SddcManagerRole', 'Install-WorkspaceOne', 'Undo-WorkspaceOne', 'Initialize-WorkspaceOne', 'Set-WorkspaceOneNtpConfig', 'Install-WorkspaceOneCertificate', 'Set-WorkspaceOneSmtpConfig', 'Add-WorkspaceOneDirectory', 'Set-WorkspaceOneNsxtIntegration', 'Undo-WorkspaceOneNsxtIntegration', 'Add-NsxtVidmRole', 'Undo-NsxtVidmRole', 'Add-NsxtLdapRole', 'Undo-NsxtLdapRole', 'Add-WorkspaceOneRole', 'Add-NsxtIdentitySource', 'Undo-NsxtIdentitySource', 'Export-PdrJsonSpec', 'Test-PdrPrerequisite', 'Invoke-PdrDeployment', 'Invoke-UndoPdrDeployment', 'Invoke-PdrSolutionInterop', 'Invoke-UndoPdrSolutionInterop', 'Install-SiteRecoveryManager', 'Undo-SiteRecoveryManager', 'Install-vSphereReplicationManager', 'Undo-vSphereReplicationManager', 'Connect-DRSolutionTovCenter', 'Undo-DRSolutionTovCenter', 'Request-VamiPKCS12Certificate', 'Install-VamiCertificate', 'Add-VrmsNetworkAdapter', 'Backup-VMOvfProperties', 'Restore-VMOVFProperties', 'Get-VMvAppConfig', 'New-VMOvfProperty', 'Set-VMOvfIPAssignment', 'Set-VMOvfEnvTransport', 'New-VMOvfProduct', 'Set-VMOvfEULA', 'Get-VMOvfProperty', 'Set-VMOvfProperty', 'Get-NSXLBDetails', 'Add-vRSLCMNtpServer', 'Set-vRSLCMDnsConfig', 'Undo-vRSLCMNtpServer', 'Undo-vRSLCMDnsConfig', 'Undo-vRSLCMLoadBalancer', 'Set-WorkspaceOneDnsConfig', 'Undo-WorkspaceOneDnsConfig', 'Set-vROPSDnsConfig', 'Undo-vROPSDnsConfig', 'Add-vROPSNtpServer', 'Undo-vROPSNtpServer', 'Set-vRADnsConfig', 'Undo-vRADnsConfig', 'Set-vRANtpConfig', 'Undo-vRANtpConfig', 'Add-EsxiVrmsVMkernelPort', 'Undo-EsxiVrmsVMkernelPort', 'Add-EsxiVrmsStaticRoute', 'Undo-EsxiVrmsStaticRoute', 'Add-SrmLicenseKey', 'Undo-SrmLicenseKey', 'New-SrmSitePair', 'Undo-SrmSitePair', 'Add-SrmMapping', 'Undo-SrmMapping', 'Add-vSphereReplication', 'Undo-vSphereReplication', 'Add-ProtectionGroup', 'Undo-ProtectionGroup', 'Add-RecoveryPlan', 'Set-RecoveryPlan', 'Undo-RecoveryPlan', 'Copy-vRealizeLoadBalancer', 'Export-DriJsonSpec', 'Test-DriPrerequisite', 'Invoke-DriDeployment', 'Invoke-UndoDriDeployment', 'Add-NetworkSegment', 'Undo-NetworkSegment', 'Add-PrefixList', 'Undo-PrefixList', 'Add-RouteMap', 'Undo-RouteMap', 'Set-DatastoreTag', 'Undo-DatastoreTag', 'Add-StoragePolicy', 'Undo-StoragePolicy', 'Add-ContentLibrary', 'Undo-ContentLibrary', 'Enable-SupervisorCluster', 'Undo-SupervisorCluster', 'New-SupervisorClusterCSR', 'Request-SignedCertificate', 'Install-TanzuSignedCertificate', 'Install-SupervisorClusterCertificate', 'Add-SupervisorClusterLicense', 'Add-Namespace', 'Undo-Namespace', 'Add-NamespacePermission', 'Undo-NamespacePermission', 'Enable-Registry', 'Undo-Registry', 'Add-SupervisorService', 'Undo-SupervisorService', 'Add-NamespaceVmClass', 'Add-TanzuKubernetesCluster', 'Undo-TanzuKubernetesCluster', 'Export-IlaJsonSpec', 'Test-IlaPrerequisite', 'Request-IlaMscaSignedCertificate', 'Invoke-IlaDeployment', 'Invoke-UndoIlaDeployment', 'Invoke-IlaSolutionInterop', 'Invoke-UndoIlaSolutionInterop', 'Export-vRLIJsonSpec', 'New-vRLIDeployment', 'Undo-vRLIDeployment', 'Add-vRLISmtpConfiguration', 'Add-vRLIAuthenticationWSA', 'Undo-vRLIAuthenticationWSA', 'Add-vRLIAuthenticationAD', 'Undo-vRLIAuthenticationAD', 'Install-vRLIPhotonAgent', 'Undo-vRLIPhotonAgent', 'Add-vRLIAgentGroup', 'Undo-vRLIAgentGroup', 'Register-vRLIWorkloadDomain', 'Set-vRLISyslogEdgeCluster', 'Undo-vRLISyslogEdgeCluster', 'Add-vRLILogArchive', 'Add-vRLIAuthenticationGroup', 'Undo-vRLIAuthenticationGroup', 'Add-vRLIAlertDatacenter', 'Add-vRLIAlertVirtualMachine', 'Undo-vRLIAlert', 'Enable-vRLIAlert', 'Disable-vRLIAlert', 'Add-vRLILogForwarder', 'Undo-vRLILogForwarder', 'Add-NsxtNodeProfileSyslogExporter', 'Undo-NsxtNodeProfileSyslogExporter', 'Request-vROpsLogForwardingConfig', 'Get-vRAvRLIConfig', 'Set-vRAvRLIConfig', 'Remove-vRAvRLIConfig', 'Enable-vRLIContentPack', 'Uninstall-vRLIContentPack', 'Update-vRLIContentPack', 'Export-IomJsonSpec', 'Test-IomPrerequisite', 'Request-IomMscaSignedCertificate', 'Invoke-IomDeployment', 'Invoke-UndoIomDeployment', 'Invoke-IomSolutionInterop', 'Invoke-UndoIomSolutionInterop', 'Export-vROPsJsonSpec', 'New-vROPSDeployment', 'Undo-vROPSDeployment', 'Import-vROPSUserAccount', 'Import-vROPSUserGroup', 'Register-vROPSWorkloadDomain', 'Add-vROPSGroupRemoteCollectors', 'Update-vROPSAdapterVcenter', 'Update-vROPSAdapterCollecterGroup', 'Remove-OperationsDefaultAdapter', 'Add-vROPSCurrency', 'Enable-vROPSManagementPack', 'Register-vROPSManagementPack', 'Add-vROPSAdapterNsxt', 'Add-vROPSAdapterPing', 'Update-vROPSAdapterSddcHealth', 'Add-vROPSAdapterSddcHealth', 'Add-vROPSAdapterIdentityManager', 'Add-vROPSAdapterSrm', 'Add-vROPSAdapterVr', 'Add-vROPSAdapterVcf', 'Undo-vROPSAdapter', 'Undo-vROPSCredential', 'Add-vROPSAlertPluginEmail', 'Import-vROPSNotification', 'Test-vROPsAdapterStatusByType', 'Update-vROPSvRAAdapterCredential', 'Add-vROPSVcfCredential', 'Add-vROPSVcenterCredential', 'Add-vROPSNsxCredential', 'Export-InvJsonSpec', 'Test-InvPrerequisite', 'Request-InvMscaSignedCertificate', 'Invoke-InvDeployment', 'Invoke-UndoInvDeployment', 'Invoke-InvSolutionInterop', 'Invoke-UndoInvSolutionInterop', 'Export-AriaNetworksJsonSpec', 'New-AriaNetworksDeployment', 'Undo-AriaNetworksDeployment', 'Undo-AriaNetworksVcenterDataSource', 'Export-PcaJsonSpec', 'Test-PcaPrerequisite', 'Request-PcaMscaSignedCertificate', 'Invoke-PcaDeployment', 'Invoke-UndoPcaDeployment', 'Invoke-PcaSolutionInterop', 'Invoke-UndoPcaSolutionInterop', 'Export-vRAJsonSpec', 'New-vRADeployment', 'Undo-vRADeployment', 'Update-vRAOrganizationDisplayName', 'New-vRACloudAccount', 'Undo-vRACloudAccount', 'Update-vRACloudAccountZone', 'Add-vROvCenterServer', 'Remove-vROvCenterServer', 'Add-vROTrustedCertificate', 'Add-vRANotification', 'Add-vRAUser', 'Undo-vRAUser', 'Add-vRAGroup', 'Undo-vRAGroup', 'New-vRAvROPSIntegrationItem', 'Undo-vRAvROPsIntegrationItem', 'Export-HrmJsonSpec', 'Test-HrmPrerequisite', 'Invoke-HrmDeployment', 'Invoke-UndoHrmDeployment', 'Deploy-PhotonAppliance', 'Remove-PhotonAppliance', 'Export-CbwJsonSpec', 'Test-CbwPrerequisite', 'Invoke-CbwDeployment', 'Invoke-UndoCbwDeployment', 'Invoke-CbwSolutionInterop', 'Invoke-UndoCbwSolutionInterop', 'Export-CbrJsonSpec', 'Test-CbrPrerequisite', 'Invoke-CbrDeployment', 'Invoke-UndoCbrDeployment', 'Invoke-CbrSolutionInterop', 'Invoke-UndoCbrSolutionInterop', 'Export-CcmJsonSpec', 'Test-CcmPrerequisite', 'Invoke-CcmDeployment', 'Invoke-UndoCcmDeployment', 'Invoke-CcmSolutionInterop', 'Invoke-UndoCcmSolutionInterop', 'Export-vRSLCMJsonSpec', 'Test-VrslcmPrerequisite', 'Invoke-vRSLCMDeployment', 'Invoke-VrslcmUndoDeployment', 'Add-vRSLCMMyVMwareAccount', 'Undo-vRSLCMMyVMwareAccount', 'New-vRSLCMDatacenter', 'New-vRSLCMDatacenterVcenter', 'Undo-vRSLCMDatacenter', 'Update-vRSLCMPSPack', 'Request-vRSLCMBundle', 'New-vRSLCMDeployment', 'Undo-vRSLCMDeployment', 'Install-vRSLCMCertificate', 'Connect-vRSLCMUpgradeIso', 'Disconnect-vRSLCMUpgradeIso', 'Start-vRSLCMUpgrade', 'Add-vRSLCMGroupRole', 'Undo-vRSLCMGroupRole', 'Export-GlobalWsaJsonSpec', 'Test-GlobalWsaPrerequisite', 'Request-WSAMscaSignedCertificate', 'Invoke-GlobalWsaDeployment', 'Invoke-UndoGlobalWsaDeployment', 'Export-WsaJsonSpec', 'New-WSADeployment', 'Undo-WSADeployment', 'Invoke-WsaDirectorySync', 'Add-vCenterGlobalPermission', 'Undo-vCenterGlobalPermission', 'Set-vCenterPermission', 'Add-SsoPermission', 'Undo-SsoPermission', 'Add-SsoUser', 'Undo-SsoUser', 'Add-vSphereRole', 'Undo-vSphereRole', 'Copy-vSphereRole', 'Add-VMFolder', 'Add-StorageFolder', 'Undo-VMFolder', 'Add-ResourcePool', 'Undo-ResourcePool', 'Add-AntiAffinityRule', 'Undo-AntiAffinityRule', 'Add-ClusterGroup', 'Undo-ClusterGroup', 'Add-VmStartupRule', 'Undo-VmStartupRule', 'Move-VMtoFolder', 'Add-VdsPortGroup', 'Undo-VdsPortGroup', 'Import-vRSLCMLockerCertificate', 'Undo-vRSLCMLockerCertificate', 'New-vRSLCMLockerPassword', 'Undo-vRSLCMLockerPassword', 'New-vRSLCMLockerLicense', 'Undo-vRSLCMLockerLicense', 'Add-VmGroup', 'Add-WorkspaceOneDirectoryGroup', 'Undo-WorkspaceOneDirectoryGroup', 'Add-WorkspaceOneDirectoryConnector', 'Update-SddcDeployedFlavor', 'Invoke-VcenterCommand', 'Import-ContentLibraryItem', 'Add-NsxtPrincipalIdentity', 'Undo-NsxtPrincipalIdentity', 'Test-ADAuthentication', 'Get-ADPrincipalGuid', 'Get-vCenterServerDetail', 'Get-NsxtServerDetail', 'Get-vRSLCMServerDetail', 'Get-WSAServerDetail', 'Get-vRAServerDetail', 'Get-vROPsServerDetail', 'Get-vRLIServerDetail', 'Get-VCFDnsSearchDomain', 'Request-vSphereApiToken', 'Request-VcenterApiToken', 'Connect-vSphereMobServer', 'Disconnect-vSphereMobServer', 'Get-VCVersion', 'Get-VCConfigurationNTP', 'Get-VCConfigurationDNS', 'Get-VcenterPasswordExpiration', 'Set-VcenterPasswordExpiration', 'Get-VcenterRootPasswordExpiration', 'Set-VcenterRootPasswordExpiration', 'Get-LocalUserPasswordExpiration', 'Set-LocalUserPasswordExpiration', 'Get-LocalPasswordComplexity', 'Set-LocalPasswordComplexity', 'Get-LocalAccountLockout', 'Set-LocalAccountLockout', 'Get-GlobalPermission', 'Add-GlobalPermission', 'Remove-GlobalPermission', 'Add-DrsVmToVmGroup', 'Remove-DrsVmToVmGroup', 'Get-DrsVmToVmGroup', 'Get-VcLicense', 'New-VcLicense', 'Remove-VcLicense', 'Get-SubscribedLibrary', 'Get-VcenterBackupStatus', 'Get-SnapshotStatus', 'Get-SnapshotConsolidation', 'Get-EsxiAlert', 'Get-VsanHealthTest', 'Get-VcenterTriggeredAlarm', 'Get-ESXiAdminGroup', 'Set-ESXiAdminGroup', 'Get-VCenterCEIP', 'Set-VCenterCEIP', 'Request-WSAToken', 'Get-WSAIdentityProvider', 'Get-WSAConnector', 'Add-WSAConnector', 'Get-WsaDirectory', 'Get-WSADirectoryDomain', 'Add-WSALdapDirectory', 'Set-WSABindPassword', 'Set-WSASyncSetting', 'Start-WSADirectorySync', 'Set-WSADirectoryUser', 'Set-WSADirectoryGroup', 'Get-WSASmtpConfiguration', 'Set-WSASmtpConfiguration', 'Set-WSARoleMember', 'Get-WSARole', 'Get-WSAGroup', 'Get-WSAUser', 'Get-WSARuleSet', 'Get-WSAOAuthToken', 'Get-WSAClient', 'Add-WSAClient', 'Add-WSARoleAssociation', 'Get-WSARoleId', 'Get-WSAActiveDirectoryGroupDetail', 'Get-WSARoleAssociation', 'Get-WsaAccountLockout', 'Set-WsaAccountLockout', 'Get-WsaPasswordPolicy', 'Set-WsaPasswordPolicy', 'Set-WorkspaceOneApplianceNtpConfig', 'Request-NsxtToken', 'Get-NsxtComputeManager', 'Set-NsxtComputeManager', 'Get-NsxtVidm', 'Set-NsxtVidm', 'Get-NsxtLdap', 'New-NsxtLdap', 'Remove-NsxtLdap', 'Get-NsxtLdapStatus', 'Get-NsxtPrincipalIdentity', 'New-NsxtPrincipalIdentity', 'Get-NsxtPrincipalIdentity', 'Remove-NsxtPrincipalIdentity', 'Get-NsxtRole', 'Set-NsxtRole', 'Remove-NsxtRole', 'Get-NsxtUser', 'Get-NsxtVidmUser', 'Get-NsxtVidmGroup', 'Get-NsxEdgeCluster', 'Get-NsxtTransportZone', 'New-NsxtSegment', 'Get-NsxtSegment', 'Remove-NsxtSegment', 'Get-NsxtTier0Gateway', 'Get-NsxtTier1Gateway', 'Get-NsxtPrefixList', 'New-NsxtPrefixList', 'Remove-NsxtPrefixList', 'Add-NsxtPrefix', 'Get-NsxtRouteMap', 'New-NsxtRouteMap', 'Remove-NsxtRouteMap', 'Get-NsxtRouteRedistributionPolicy', 'Set-NsxtRouteRedistributionPolicy', 'Get-NsxtManagerAuthPolicy', 'Set-NsxtManagerAuthPolicy', 'Get-NsxtEdgeNodeAuthPolicy', 'Set-NsxtEdgeNodeAuthPolicy', 'Get-NsxtSyslogStatus', 'Get-NsxtSyslogExporter', 'Set-NsxtSyslogExporter', 'Remove-NsxtSyslogExporter', 'New-vRealizeLoadBalancerSpec', 'Get-NsxtGlobalSegmentID', 'Add-CertToNsxCertificateStore', 'Get-NsxtEdgeCluster', 'New-NsxtTier1', 'Set-NsxtTier1', 'New-NsxtTier1ServiceInterface', 'New-NsxtTier1StaticRoute', 'New-NsxtLoadBalancer', 'New-NsxtLBServiceMonitor', 'New-NsxtLBAppProfile', 'New-NsxtLBPersistenceAppProfile', 'New-NsxtLBPool', 'New-NsxtLBVirtualServer', 'Get-NsxtCertificate', 'Set-NsxtCertificate', 'Get-NsxtNodeProfile', 'Set-NsxtNodeProfileSyslogExporter', 'Remove-NsxtNodeProfileSyslogExporter', 'Get-NsxtBackupConfiguration', 'Get-NsxtBackupHistory', 'Get-NsxtAlarm', 'Get-NsxtEvent', 'Get-NsxtTier0BgpStatus', 'New-NsxtTier0BgpNeighborConfig', 'Get-NsxtEdgeNode', 'Get-NsxtTier0LocaleServiceBgp', 'Get-NsxtLocaleService', 'Get-NsxtVidmStatus', 'Get-NsxtTransportNode', 'Get-NsxtTransportNodeStatus', 'Get-NsxtTransportNodeTunnel', 'Get-NsxtTransportNodeTunnelStatus', 'Get-NsxtComputeManagerStatus', 'Get-NsxtApplianceUser', 'Set-NsxtApplianceUserExpirationPolicy', 'Set-NsxtApplianceUserPassword', 'Get-NsxtLogicalRouter', 'Get-NsxtRoutingConfigRedistribution', 'Get-NsxtRoutingConfigRedistributionRule', 'Set-NsxtRoutingConfigRedistributionRule', 'Get-NsxtRoutingConfigRouteMap', 'Get-NsxtSecurityPolicy', 'Remove-NsxtSecurityPolicy', 'Get-NsxtGroup', 'Remove-NsxtGroup', 'Enable-WMRegistry', 'Get-WMRegistry', 'Remove-WMRegistry', 'Get-WMRegistryHealth', 'Connect-WMCluster', 'Disconnect-WMCluster', 'New-TanzuKubernetesCluster', 'Get-TanzuKubernetesCluster', 'Remove-TanzuKubernetesCluster', 'Get-VMClass', 'Add-VMClass', 'Get-WMLicenseStatus', 'Request-WMClusterCSR', 'Install-WMClusterCertificate', 'Watch-WmClusterConfigStatus', 'Request-vRSLCMToken', 'Get-vRSLCMHealth', 'Get-vRSLCMLockerPassword', 'Add-vRSLCMLockerPassword', 'Remove-vRSLCMLockerPassword', 'Get-vRSLCMLockerCertificate', 'Add-vRSLCMLockerCertificate', 'Remove-vRSLCMLockerCertificate', 'Get-vRSLCMLockerLicense', 'Add-vRSLCMLockerLicense', 'Remove-vRSLCMLockerLicense', 'Get-vRSLCMDatacenter', 'Add-vRSLCMDatacenter', 'Remove-vRSLCMDatacenter', 'Get-vRSLCMDatacenterVcenter', 'Add-vRSLCMDatacenterVcenter', 'Sync-vRSLCMDatacenterVcenter', 'Get-vRSLCMEnvironment', 'Add-vRSLCMEnvironment', 'Remove-vRSLCMEnvironment', 'Get-vRSLCMLoadbalancer', 'New-vRSLCMLoadbalancer', 'Remove-vRSLCMLoadbalancer', 'Get-vRSLCMRequest', 'Remove-vRSLCMRequest', 'Watch-vRSLCMRequest', 'Resume-vRSLCMRequest', 'New-vRSLCMAdapterOperation', 'Get-vRSLCMProductNtpServer', 'Remove-vRSLCMProductNtpServer', 'Get-vRSLCMApplianceNtpConfig', 'Add-vRSLCMProductNtpServer', 'Add-vRSLCMApplianceNtpConfig', 'Set-vRSLCMApplianceNtpConfig', 'Get-vRSLCMProductNode', 'Stop-vRSLCMProductNode', 'Start-vRSLCMProductNode', 'Get-vRSLCMPSPack', 'Install-vRSLCMPSPack', 'Get-vRSLCMProductBinariesMapped', 'Get-vRSLCMProductBinaries', 'Register-vRSLCMProductBinary', 'Get-vRSLCMMyVmwareAccount', 'New-vRSLCMMyVmwareAccount', 'Remove-vRSLCMMyVmwareAccount', 'Get-vRSLCMProductVersion', 'Request-vRSLCMProductBinary', 'Get-vRSLCMSshStatus', 'Set-vRSLCMSshStatus', 'Start-vRSLCMSnapshot', 'Get-vRSLCMUpgradeStatus', 'Invoke-vRSLCMUpgrade', 'Get-vRSLCMProductDetails', 'Get-vRSLCMEnvironmentVMs', 'Get-vRSLCMProductPassword', 'Get-vRSLCMRole', 'Get-vRSLCMGroup', 'Add-vRSLCMGroup', 'Remove-vRSLCMGroup', 'Request-vRAToken', 'Get-vRAOrganizationId', 'Get-vRAOrganizationDisplayName', 'Set-vRAOrganizationDisplayName', 'Get-vRACloudAccount', 'Add-vRACloudAccount', 'Remove-vRACloudAccount', 'Get-vRANotification', 'New-vRANotification', 'Remove-vRANotification', 'Get-vRAResourceCompute', 'Add-vRAResourceComputeTag', 'Get-vRACloudZone', 'Get-vRAAPIVersion', 'Get-vRAIntegrationDetail', 'Update-vRACloudZone', 'Remove-vRACloudZone', 'Get-vRAServices', 'Get-vRAUser', 'New-vRAUser', 'Get-vRAGroup', 'New-vRAGroup', 'Get-vRAUserRoles', 'Get-vRAGroupRoles', 'Remove-vRAGroupRoles', 'Set-vRAGroupOrgRole', 'Remove-vRAGroupOrgRole', 'Set-vRAGroupServiceRole', 'Remove-vRAGroupServiceRole', 'Set-vRAUserOrgRole', 'Remove-vRAUserOrgRole', 'Set-vRAUserServiceRole', 'Remove-vRAUserServiceRole', 'Add-vRAIntegrationItem', 'Test-vRAIntegrationItem', 'Remove-vRAIntegrationItem', 'Invoke-vRORestMethod', 'Get-vROVersion', 'Get-vROWorkflow', 'Invoke-vROWorkflow', 'New-vROParameterDefinition', 'Get-vROWorkflowExecution', 'Get-vROWorkflowExecutionState', 'Get-vROWorkflowExecutionResult', 'Request-vROPSToken', 'Get-vROPSVersion', 'Get-vROPSCollector', 'Get-vROPSCollectorGroup', 'Add-vROPSCollectorGroup', 'Remove-vROPSCollectorGroup', 'Get-vROPSAdapter', 'Set-vROPSAdapter', 'Add-vROPSAdapter', 'Remove-vROPSAdapter', 'Test-vROPSAdapterConnection', 'Start-vROPSAdapter', 'Stop-vROPSAdapter', 'Get-vROPSAdapterKind', 'Get-vROPSResourceDetail', 'Get-vROPSCredential', 'Add-vROPSCredential', 'Remove-vROPSCredential', 'Get-vROPSCurrency', 'Set-vROPSCurrency', 'Get-vROPSSolution', 'Import-vROPSManagementPack', 'Install-vROPSManagementPack', 'Set-vROPSManagementPack', 'Get-vROPSManagementPack', 'Get-vROPSManagementPackStatus', 'Get-vROPSManagementPackActivity', 'Get-vROPSAlertPlugin', 'Add-vROPSAlertPlugin', 'Set-vROPSAlertPlugin', 'Remove-vROPSAlertPlugin', 'Get-vROPSAlertDefinition', 'Set-vROPSAlertPluginStatus', 'Get-vROPSAuthSource', 'Get-vROPSAuthRole', 'Get-vROPSUserAccount', 'Get-vROPSUserGroup', 'Add-vROPSUserAccount', 'Add-vROPSUserGroup', 'Remove-vROPSUserAccount', 'Remove-vROPSUserGroup', 'Search-vROPSUserAccount', 'Search-vROPSUserGroup', 'Update-vROPSUserAccount', 'Get-vROpsLogForwarding', 'Get-vROPSNotification', 'New-vROPSNotification', 'Remove-vROPSNotification', 'Test-vROPsAdapterStatus', 'Request-vRLIToken', 'Get-vRLIVersion', 'Get-vRLIAuthenticationWSA', 'Set-vRLIAuthenticationWSA', 'Remove-vRLIAuthenticationWSA', 'Get-vRLIAuthenticationAD', 'Set-vRLIAuthenticationAD', 'Remove-vRLIAuthenticationAD', 'Get-vRLIAgentGroup', 'New-vRLIAgentGroup', 'Remove-vRLIAgentGroup', 'Get-vRLISmtpConfiguration', 'Set-vRLISmtpConfiguration', 'Get-vRLIRetentionThreshold', 'Set-vRLIRetentionThreshold', 'Get-vRLIIndexPartition', 'Set-vRLILogArchive', 'Get-vRLIEmailNotification', 'Set-vRLIEmailNotification', 'Get-vRLIRole', 'Get-vRLIGroup', 'Add-vRLIGroup', 'Remove-vRLIGroup', 'Get-vRLIAlert', 'New-vRLIAlert', 'Remove-vRLIAlert', 'Set-vRLIAlert', 'Update-vRLIAlert', 'Get-vRLILogForwarder', 'Set-vRLILogForwarder', 'Remove-vRLILogForwarder', 'Update-vRLILogForwarder', 'Test-vRLILogForwarder', 'Get-vRLIMarketplaceMetadata', 'Get-vRLIContentPack', 'Install-vRLIContentPack', 'Remove-vRLIContentPack', 'Request-AriaNetworksToken', 'Request-AriaNetworksInternalApiToken', 'Get-AriaNetworksNodes', 'Get-AriaNetworksDataSource', 'Get-AriaNetworksLdapConfiguration', 'Remove-AriaNetworksDataSource', 'New-AriaNetworksvCenterDataSource', 'New-AriaNetworksNsxtDataSource', 'New-AriaNetworksLdapConfiguration', 'Update-AriaNetworksvCenterDataSourceCredentials', 'Update-AriaNetworksNsxtDataSourceCredentials', 'Add-AriaNetworksLdapConfiguration', 'Undo-AriaNetworksLdapConfiguration', 'Add-AriaNetworksVcenterDataSource', 'Undo-AriaNetworksVcenterDataSource', 'Add-AriaNetworksNsxDataSource', 'Undo-AriaNetworksNsxDataSource', 'Get-VrmsNetworkInterface', 'Set-VrmsNetworkInterface', 'Get-VrmsConfiguration', 'Set-VrmsConfiguration', 'Remove-VrmsConfiguration', 'Set-VrmsReplication', 'Get-VrmsVamiCertificate', 'Set-VrmsVamiCertificate', 'Request-VrmsTokenREST', 'Get-VrmsSitePairing', 'Connect-VrmsRemoteSession', 'Get-VrmsVm', 'Get-VrmsDatastore', 'Get-VrmsReplication', 'Add-VrmsReplication', 'Remove-VrmsReplication', 'Test-VrRegistration', 'Request-SrmToken', 'Get-SrmApplianceDetail', 'Set-SrmApplianceState', 'Get-SrmTask', 'Get-SrmService', 'Set-SrmService', 'Get-SrmNetworkAll', 'Get-SrmNetworkDns', 'Set-SrmNetworkDns', 'Get-SrmNetworkInterface', 'Set-SrmNetworkInterface', 'Get-SrmConfiguration', 'Set-SrmConfiguration', 'Remove-SrmConfiguration', 'Get-SrmVamiCertificate', 'Set-SrmVamiCertificate', 'Request-SrmTokenREST', 'Connect-SrmRemoteSession', 'Get-SrmSitePairing', 'Get-SrmProtectionGroup', 'Add-SrmProtectionGroup', 'Remove-SrmProtectionGroup', 'Get-SrmRecoveryPlan', 'Add-SrmRecoveryPlan', 'Remove-SrmRecoveryPlan', 'Get-SrmRecoveryPlanStep', 'Add-SrmRecoveryPlanCalloutStep', 'Get-SrmRecoveryPlanVm', 'Set-SrmRecoveryPlanVMPriority', 'Test-SrmRegistration', 'Invoke-GeneratePrivateKeyAndCsr', 'Invoke-RequestSignedCertificate', 'Get-MscaRootCertificate', 'Invoke-GenerateChainPem', 'Invoke-GeneratePKCS12', 'Show-PowerValidatedSolutionsOutput', 'Debug-ExceptionWriter', 'Test-PowerValidatedSolutionsPrereq', 'Test-PrereqDnsEntries', 'Test-EndpointConnection', 'Test-VCFConnection', 'Test-VCFAuthentication', 'Test-EsxiConnection', 'Test-EsxiAuthentication', 'Test-VsphereConnection', 'Test-VsphereAuthentication', 'Test-AriaNetworksInternalAuthentication', , 'Test-SSOConnection', 'Test-SSOAuthentication', 'Test-vSphereApiConnection', 'Test-vSphereApiAuthentication', 'Test-NSXTConnection', 'Test-NSXTAuthentication', 'Test-vRSLCMConnection', 'Test-vRSLCMAuthentication', 'Test-vROPSConnection', 'Test-vROPSAuthentication', 'Test-vRLIConnection', 'Test-vRLIAuthentication', 'Test-vRAConnection', 'Test-vRAAuthentication', 'Test-WSAConnection', 'Test-WSAAuthentication', 'Test-AriaNetworksConnection', 'Test-AriaNetworksAuthentication', 'Test-VrmsVamiConnection', 'Test-VrmsVamiAuthentication', 'Test-VrSdkAuthentication', 'Test-VrConnection', 'Test-SrmVamiConnection', 'Test-SrmVamiAuthentication', 'Test-SrmConnection', 'Test-SrmAuthentication', 'Test-SrmSdkAuthentication', 'Test-SrmAuthenticationREST', 'Test-VrmsAuthenticationREST', 'Test-WMSubnetInput', 'Test-IpAddress', 'Test-IPaddressArray', 'Test-DnsServers', 'Test-NtpServer', 'Start-ValidatedSolutionMenu', 'Deploy-NsxtGlobalManager', 'Remove-NsxtGlobalManager', 'Add-NsxtGlobalManagerClusterNode', 'Get-NsxtGlobalManagerClusterStatus', 'Get-NsxtGlobalManagerCluster', 'Join-NsxtGlobalManagerCluster', 'Remove-NsxtGlobalManagerClusterNode', 'Add-NsxtGlobalManagerVirtualIp', 'Undo-NsxtGlobalManagerVirtualIp', 'Get-NsxtGlobalManagerClusterVirtualIp', 'Set-NsxtGlobalManagerClusterVirtualIp', 'Remove-NsxtGlobalManagerClusterVirtualIp', 'Get-NsxtIpPool', 'New-NsxtIpPool', 'Remove-NsxtIpPool', 'Get-NsxtIpPoolSubnet', 'New-NsxtIpPoolSubnet', 'Remove-NsxtIpPoolSubnet', 'Add-NsxtRemoteTunnelEndpoint', 'Undo-NsxtRemoteTunnelEndpoint', 'Set-NsxtMtuRemoteTunnelEndpoint', 'Add-NsxtRemoteTunnelEndpoint', 'Undo-NsxtRemoteTunnelEndpoint', 'Get-NsxtGlobalManager', 'Get-NsxtGlobalManagerConfig', 'Get-NsxtGlobalManagerOperationalState', 'Export-NsxFederationJsonSpec', 'Invoke-NsxFederationDeployment', 'Get-NsxtGlobalManagerLocation', 'New-NsxtGlobalManagerLocation', 'Remove-NsxtGlobalManagerLocation', 'Set-NsxtGloblaManagerActive', 'Set-NsxtGloblaManagerStandby', 'Test-NsxtVersionCompatibility', 'Add-NsxtGlobalManagerMode', 'Add-NsxtGlobalManagerLocation', 'Get-NsxtGlobalManagerOnBoarding', 'Start-NsxtBackup', 'Get-NsxtGlobalManagerBackupOverview', 'Set-NsxtTransportNode', 'Start-NsxtGlobalManagerOnBoarding', 'Remove-NsxtGlobalManagerStandby', 'Undo-NsxtGlobalManagerStandby', 'Test-NsxFederationPrerequisite', 'Request-NsxFederationMscaSignedCertificate', 'Get-NsxtGlobalManagerTier0Gateway', 'Get-NsxtGlobalManagerTier1Gateway', 'Get-NsxtGlobalManagerEdgeCluster', 'Get-NsxtGlobalManagerTier1LocaleServices', 'New-NsxtGlobalManagerTier1Gateway', 'New-NsxtGlobalManagerTier1LocaleServices', 'Add-NsxtGlobalManagerTier1Gateway', 'Remove-NsxtGlobalManagerTier1Gateway', 'Remove-NsxtGlobalManagerTier1LocaleServices', 'Undo-NsxtGlobalManagerTier1Gateway', 'Import-NsxtGlobalManagerLocation', 'Get-NsxtGlobalManagerSegment', 'Set-NsxtGlobalManagerSegment', 'Update-NsxtGlobalManagerSegment', 'Get-NsxtGlobalManagerTier0LocaleServices', 'Remove-NsxtGlobalManagerTier0Gateway', 'Remove-NsxtGlobalManagerTier0LocaleServices', 'Undo-NsxtGlobalManagerTier0Gateway', 'Remove-NsxtGlobalManagerTier0BgpNeighborConfig', 'Remove-NsxtGlobalManagerTier0ServiceInterface', 'Export-NsxtGlobalManagerTier0GatewayConfig', 'Update-NsxtGlobalManagerTier1Gateway', 'Get-NsxtGlobalManagerTier0BgpNeighborConfig', 'Get-NsxtGlobalManagerTier0ServiceInterface','New-NsxtGlobalManagerTier0LocaleServices','New-NsxtGlobalManagerTier0ServiceInterface','New-NsxtGlobalManagerTier0BgpNeighborConfig','Update-NsxtGlobalManagerTier0LocaleService','Update-NsxtGlobalManagerTier0Gateway','Update-NsxtGlobalManagerTier1LocaleService')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = '*'

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('VMware', 'ValidatedSolutions', 'VMwareValidatedSolutions', 'CloudFoundation', 'VMwareCloudFoundation')

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/vmware/power-validated-solutions-for-cloud-foundation/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://vmware.github.io/power-validated-solutions-for-cloud-foundation/'

            # A URL to an icon representing this module.
            IconUri      = 'https://raw.githubusercontent.com/vmware/power-validated-solutions-for-cloud-foundation/main/.github/icon-85px.svg'

            # ReleaseNotes of this module
            ReleaseNotes = 'https://vmware.github.io/power-validated-solutions-for-cloud-foundation/release-notes/'

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}
