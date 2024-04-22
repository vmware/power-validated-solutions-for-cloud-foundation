# Site Protection and Disaster Recovery for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                                | Type                  |
    | ------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-PdrPrerequisite`](Test-PdrPrerequisite.md)                                                       | Prerequisites         |
    | [`Export-PdrJsonSpec`](Export-PdrJsonSpec.md)                                                           | End-to-End Deployment |
    | [`Invoke-PdrDeployment`](Invoke-PdrDeployment.md)                                                       | End-to-End Deployment |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                                       | Procedure             |
    | [`Move-VMtoFolder`](./../../vsphere/Move-VMtoFolder.md)                                                 | Procedure             |
    | [`Copy-vRealizeLoadBalancer`](./../../nsx/Copy-vRealizeLoadBalancer.md)                                 | Procedure             |
    | [`Set-vRSLCMDnsConfig`](./../../aria-suite/aria-suite-lifecycle/Set-vRSLCMDnsConfig.md)                 | Procedure             |
    | [`Add-vRSLCMNtpServer`](./../../aria-suite/aria-suite-lifecycle/Add-vRSLCMNtpServer.md)                 | Procedure             |
    | [`Set-WorkspaceOneDnsConfig`](./../../workspace-one-access/Set-WorkspaceOneDnsConfig.md)                | Procedure             |
    | [`Set-WorkspaceOneNtpConfig`](./../../workspace-one-access/Set-WorkspaceOneNtpConfig.md)                | Procedure             |
    | [`Set-vROPSDnsConfig`](./../../aria-suite/aria-operations/Set-vROPSDnsConfig.md)                        | Procedure             |
    | [`Add-vROPSNtpServer`](./../../aria-suite/aria-operations/Add-vROPSNtpServer.md)                        | Procedure             |
    | [`Set-vRADnsConfig`](./../../aria-suite/aria-automation/Set-vRADnsConfig.md)                            | Procedure             |
    | [`Set-vRANtpConfig`](./../../aria-suite/aria-automation/Set-vRANtpConfig.md)                            | Procedure             |
    | [`Install-vSphereReplicationManager`](./../../vsphere-replication/Install-vSphereReplicationManager.md) | Procedure             |
    | [`Install-VamiCertificate`](./../../vsphere/Install-VamiCertificate.md)                                 | Procedure             |
    | [`Connect-DRSolutionTovCenter`](./../../vsphere-replication/Connect-DRSolutionTovCenter.md)             | Procedure             |
    | [`Add-VdsPortGroup`](./../../vsphere/Add-VdsPortGroup.md)                                               | Procedure             |
    | [`Add-VrmsNetworkAdapter`](./../../vsphere-replication/Add-VrmsNetworkAdapter.md)                       | Procedure             |
    | [`Add-EsxiVrmsVMkernelPort`](./../../vsphere-replication/Add-EsxiVrmsVMkernelPort.md)                   | Procedure             |
    | [`Add-EsxiVrmsStaticRoute`](./../../vsphere-replication/Add-EsxiVrmsStaticRoute.md)                     | Procedure             |
    | [`Install-SiteRecoveryManager`](./../../site-recovery-manager/Install-SiteRecoveryManager.md)           | Procedure             |
    | [`Add-SrmLicenseKey`](./../../site-recovery-manager/Add-SrmLicenseKey.md)                               | Procedure             |
    | [`New-SrmSitePair`](./../../site-recovery-manager/New-SrmSitePair.md)                                   | Procedure             |
    | [`Add-SrmMapping`](./../../site-recovery-manager/Add-SrmMapping.md)                                     | Procedure             |
    | [`Add-vSphereReplication`](./../../vsphere-replication/Add-vSphereReplication.md)                       | Procedure             |
    | [`Add-ProtectionGroup`](./../../site-recovery-manager/Add-ProtectionGroup.md)                           | Procedure             |
    | [`Add-RecoveryPlan`](./../../site-recovery-manager/Add-RecoveryPlan.md)                                 | Procedure             |
    | [`Set-RecoveryPlan`](./../../site-recovery-manager/Set-RecoveryPlan.md)                                 | Procedure             |
    | [`Backup-VMOvfProperties`](./../../vsphere/Backup-VMOvfProperties.md)                                   | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                                       | Procedure             |
    | [`Add-ClusterGroup`](./../../vsphere/Add-ClusterGroup.md)                                               | Procedure             |
    | [`Add-VmStartupRule`](./../../vsphere/Add-VmStartupRule.md)                                             | Procedure             |
    | [`Restore-VMOvfProperties`](./../../vsphere/Restore-VMOvfProperties.md)                                 | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                          | Type                  |
    | ------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-PdrPrerequisite`](Test-PdrPrerequisite.md)                                                 | Prerequisites         |
    | [`Export-PdrJsonSpec`](Export-PdrJsonSpec.md)                                                     | End-to-End Removal    |
    | [`Invoke-UndoPdrDeployment`](Invoke-UndoPdrDeployment.md)                                         | End-to-End Removal    |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                               | Procedure             |
    | [`Undo-vSphereReplicationManager`](./../../vsphere-replication/Undo-vSphereReplicationManager.md) | Procedure             |
    | [`Undo-DRSolutionTovCenter`](./../../vsphere-replication/Undo-DRSolutionTovCenter.md)             | Procedure             |
    | [`Undo-VdsPortGroup`](./../../vsphere/Undo-VdsPortGroup.md)                                       | Procedure             |
    | [`Undo-EsxiVrmsVMkernelPort`](./../../vsphere-replication/Undo-EsxiVrmsVMkernelPort.md)           | Procedure             |
    | [`Undo-EsxiVrmsStaticRoute`](./../../vsphere-replication/Undo-EsxiVrmsStaticRoute.md)             | Procedure             |
    | [`Undo-SiteRecoveryManager`](./../../site-recovery-manager/Undo-SiteRecoveryManager.md)           | Procedure             |
    | [`Undo-SrmLicenseKey`](./../../site-recovery-manager/Undo-SrmLicenseKey.md)                       | Procedure             |
    | [`Undo-SrmSitePair`](./../../site-recovery-manager/Undo-SrmSitePair.md)                           | Procedure             |
    | [`Undo-SrmMapping`](./../../site-recovery-manager/Undo-SrmMapping.md)                             | Procedure             |
    | [`Undo-vSphereReplication`](./../../vsphere-replication/Undo-vSphereReplication.md)               | Procedure             |
    | [`Undo-ProtectionGroup`](./../../site-recovery-manager/Undo-ProtectionGroup.md)                   | Procedure             |
    | [`Undo-RecoveryPlan`](./../../site-recovery-manager/Undo-RecoveryPlan.md)                         | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                               | Procedure             |
    | [`Undo-ClusterGroup`](./../../vsphere/Undo-ClusterGroup.md)                                       | Procedure             |
    | [`Undo-VmStartupRule`](./../../vsphere/Undo-VmStartupRule.md)                                     | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                                                         | Type                   |
    | ------------------------------------------------------------------------------------------------ | ---------------------- |
    | [`Add-SsoUser`](./../../vsphere/Add-SsoUser.md)                                                  | Procedure              |
    | [`Add-vCenterGlobalPermission`](./../../vsphere/Add-vCenterGlobalPermission.md)                  | Procedure              |
    | [`Enable-vROPSManagementPack`](./../../aria-suite/aria-operations/Enable-vROPSManagementPack.md) | Procedure              |
    | [`Add-vROPSAdapterSrm`](./../../aria-suite/aria-operations/Add-vROPSAdapterSrm.md)               | Procedure              |
    | [`Add-vROPSAdapterVr`](./../../aria-suite/aria-operations/Add-vROPSAdapterVr.md)                 | Procedure              |
    | [`Import-vROPSNotification`](./../../aria-suite/aria-operations/Import-vROPSNotification.md)     | Procedure              |
    | [`Install-vRLIPhotonAgent`](./../../aria-suite/aria-operations-logs/Install-vRLIPhotonAgent.md)  | Procedure              |
    | [`Add-vRLIAgentGroup`](./../../aria-suite/aria-operations-logs/Add-vRLIAgentGroup.md)            | Procedure              |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-site-protection-and-disaster-recovery-v1/GUID-CA4DCF12-8BCC-4137-884C-E9DB2A19FAA4.html
