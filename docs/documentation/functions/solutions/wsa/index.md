# Workspace ONE Access (Cross-Instance)

Workspace ONE Access (Cross-Instance) deployment is a prerequisite for the following solutions:

- [Intelligent Operations Management](./../iom/index.md)
- [Private Cloud Automation](./../pca/index.md)
- [Health Reporting and Monitoring](./../hrm/index.md)

Select an option for the prerequisites component.

=== ":material-location-enter: &nbsp; Deployment"

    The following functions can be use to perform the solution prerequisites.

    | Function                                                                                                      | Type                  |
    | ------------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-GlobalWsaPrerequisite`](Test-GlobalWsaPrerequisite.md)                                                 | Prerequisites         |
    | [`Request-WSAMscaSignedCertificate`](Request-WSAMscaSignedCertificate.md)                                     | Prerequisites         |
    | [`Export-GlobalWsaJsonSpec`](Export-GlobalWsaJsonSpec.md)                                                     | End-to-End Deployment |
    | [`Invoke-GlobalWsaDeployment`](Invoke-GlobalWsaDeployment.md)                                                 | End-to-End Deployment |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                                                 | Procedure             |
    | [`Import-ContentLibraryItem`](./../../vsphere/Import-ContentLibraryItem.md)                                   | Procedure             |
    | [`Sync-vRSLCMDatacenterVcenter`](./../../aria-suite/aria-suite-lifecycle/Sync-vRSLCMDatacenterVcenter.md)     | Procedure             |
    | [`New-vRSLCMDatacenterVcenter`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMDatacenterVcenter.md)       | Procedure             |
    | [`Import-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Import-vRSLCMLockerCertificate.md) | Procedure             |
    | [`New-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerPassword.md)             | Procedure             |
    | [`Export-WsaJsonSpec`](./../../workspace-one-access/Export-WsaJsonSpec.md)                                    | Procedure             |
    | [`New-WSADeployment`](./../../workspace-one-access/New-WSADeployment.md)                                      | Procedure             |
    | [`Add-WorkspaceOneDirectory`](./../../workspace-one-access/Add-WorkspaceOneDirectory.md)                      | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                                             | Procedure             |
    | [`Add-ClusterGroup`](./../../vsphere/Add-ClusterGroup.md)                                                     | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                                               | Procedure             |
    | [`Set-WorkspaceOneNtpConfig`](./../../workspace-one-access/Set-WorkspaceOneNtpConfig.md)                      | Procedure             |
    | [`Add-WorkspaceOneDirectoryConnector`](./../../workspace-one-access/Add-WorkspaceOneDirectoryConnector.md)    | Procedure             |
    | [`Add-WorkspaceOneRole`](./../../workspace-one-access/Add-WorkspaceOneRole.md)                                | Procedure             |
    | [`Add-vRSLCMGroupRole`](./../../aria-suite/aria-suite-lifecycle/Add-vRSLCMGroupRole.md)                        | Procedure             |

=== ":material-location-exit: &nbsp; Removal"

    The following functions can be use to remove the solution prerequisites.

    | Function                                                                                                      | Type                  |
    | ------------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Invoke-UndoGlobalWsaDeployment`](Invoke-UndoGlobalWsaDeployment.md)                                         | End-to-End Deployment |
    | [`Undo-vRSLCMGroupRole`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMGroupRole.md)                     | Procedure             |
    | [`Undo-ClusterGroup`](./../../vsphere/Undo-ClusterGroup.md)                                                   | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                                           | Procedure             |
    | [`Undo-WSADeployment`](./../../workspace-one-access/Undo-WSADeployment.md)                                    | Procedure             |
    | [`Undo-vRSLCMDatacenter`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMDatacenter.md)                   | Procedure             |
    | [`Undo-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerCertificate.md)     | Procedure             |
    | [`Undo-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerPassword.md)           | Procedure             |
    | [`Undo-vRSLCMLoadBalancer`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLoadBalancer.md)               | Procedure             |
