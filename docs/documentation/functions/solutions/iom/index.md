# Intelligent Operations Management for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [VMware Aria Suite Lifecycle](./../lcm/index.md)
    - [Workspace ONE Access (Global)](./../wsa/index.md)

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                                          | Type                  |
    | ----------------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-IomPrerequisite`](Test-IomPrerequisite.md)                                                                 | Prerequisites         |
    | [`Request-IomMscaSignedCertificate`](Request-IomMscaSignedCertificate.md)                                         | Prerequisites         |
    | [`Export-IomJsonSpec`](Export-IomJsonSpec.md)                                                                     | End-to-End Deployment |
    | [`Invoke-IomDeployment`](Invoke-IomDeployment.md)                                                                 | End-to-End Deployment |
    | [`Update-vRSLCMPSPack`](./../../aria-suite/aria-suite-lifecycle/Update-vRSLCMPSPack.md)                           | Procedure             |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                                                     | Procedure             |
    | [`Add-SddcManagerRole`](./../../sddc-manager/Add-SddcManagerRole.md)                                              | Procedure             |
    | [`Add-vSphereRole`](./../../vsphere/Add-vSphereRole.md)                                                           | Procedure             |
    | [`Add-vCenterGlobalPermission`](./../../vsphere/Add-vCenterGlobalPermission.md)                                   | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                                                 | Procedure             |
    | [`Add-NsxtPrincipalIdentity`](./../../nsx/Add-NsxtPrincipalIdentity.md)                                           | Procedure             |
    | [`New-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerLicense.md)                   | Procedure             |
    | [`Import-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Import-vRSLCMLockerCertificate.md)     | Procedure             |
    | [`New-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerPassword.md)                 | Procedure             |
    | [`Export-IomJsonSpec`](Export-IomJsonSpec.md)                                                                     | Procedure             |
    | [`New-vROPSDeployment`](./../../aria-suite/aria-operations/New-vROPSDeployment.md)                                | Procedure             |
    | [`Move-VMtoFolder`](./../../vsphere/Move-VMtoFolder.md)                                                           | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                                                 | Procedure             |
    | [`Add-ClusterGroup`](./../../vsphere/Add-ClusterGroup.md)                                                         | Procedure             |
    | [`Add-VmStartupRule`](./../../vsphere/Add-VmStartupRule.md)                                                       | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                                                   | Procedure             |
    | [`Add-vROPSGroupRemoteCollectors`](./../../aria-suite/aria-operations/Add-vROPSGroupRemoteCollectors.md)          | Procedure             |
    | [`Add-WorkspaceOneDirectoryGroup`](./../../workspace-one-access/Add-WorkspaceOneDirectoryGroup.md)                | Procedure             |
    | [`Import-vROPSUserGroup`](./../../aria-suite/aria-operations/Import-vROPSUserGroup.md)                            | Procedure             |
    | [`Add-vROPSCurrency`](./../../aria-suite/aria-operations/Add-vROPSCurrency.md)                                    | Procedure             |
    | [`Add-vROPSAlertPluginEmail`](./../../aria-suite/aria-operations/Add-vROPSAlertPluginEmail.md)                    | Procedure             |
    | [`Remove-OperationsDefaultAdapter`](./../../aria-suite/aria-operations/Remove-OperationsDefaultAdapter.md)        | Procedure             |
    | [`Register-vROPSManagementPack`](./../../aria-suite/aria-operations/Register-vROPSManagementPack.md)              | Procedure             |
    | [`Add-vROPSVcfCredential`](./../../aria-suite/aria-operations/Add-vROPSVcfCredential.md)                          | Procedure             |
    | [`Add-vROPSVcenterCredential`](./../../aria-suite/aria-operations/Add-vROPSVcenterCredential.md)                  | Procedure             |
    | [`Add-vROPSNsxCredential`](./../../aria-suite/aria-operations/Add-vROPSNsxCredential.md)                          | Procedure             |
    | [`Add-vROPSAdapterVcf`](./../../aria-suite/aria-operations/Add-vROPSAdapterVcf.md)                                | Procedure             |
    | [`Add-vROPSAdapterPing`](./../../aria-suite/aria-operations/Add-vROPSAdapterPing.md)                              | Procedure             |
    | [`Import-vROPSNotification`](./../../aria-suite/aria-operations/Import-vROPSNotification.md)                      | Procedure             |
    | [`Add-SsoUser`](./../../vsphere/Add-SsoUser.md)                                                                   | Procedure             |
    | [`New-vRSLCMDatacenterVcenter`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMDatacenterVcenter.md)           | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                                  | Type                  |
    | --------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-IomPrerequisite`](Test-IomPrerequisite.md)                                                         | Prerequisites         |
    | [`Export-IomJsonSpec`](Export-IomJsonSpec.md)                                                             | End-to-End Removal    |
    | [`Invoke-UndoIomDeployment`](Invoke-UndoIomDeployment.md)                                                 | End-to-End Removal    |
    | [`Undo-ContentLibrary`](./../../vsphere/Undo-ContentLibrary.md)                                           | Procedure             |
    | [`Undo-SddcManagerRole`](./../../sddc-manager/Undo-SddcManagerRole.md)                                    | Procedure             |
    | [`Undo-vSphereRole`](./../../vsphere/Undo-vSphereRole.md)                                                 | Procedure             |
    | [`Undo-vCenterGlobalPermission`](./../../vsphere/Undo-vCenterGlobalPermission.md)                         | Procedure             |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                                       | Procedure             |
    | [`Undo-NsxtPrincipalIdentity`](./../../nsx/Undo-NsxtPrincipalIdentity.md)                                 | Procedure             |
    | [`Undo-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerLicense.md)         | Procedure             |
    | [`Undo-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerCertificate.md) | Procedure             |
    | [`Undo-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerPassword.md)       | Procedure             |
    | [`Undo-vROPSDeployment`](./../../aria-suite/aria-operations/Undo-vROPSDeployment.md)                      | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                                       | Procedure             |
    | [`Undo-ClusterGroup`](./../../vsphere/Undo-ClusterGroup.md)                                               | Procedure             |
    | [`Undo-VmStartupRule`](./../../vsphere/Undo-VmStartupRule.md)                                             | Procedure             |
    | [`Undo-vROPSCredential`](./../../aria-suite/aria-operations/Undo-vROPSCredential.md)                      | Procedure             |
    | [`Undo-vROPSAdapter`](./../../aria-suite/aria-operations/Undo-vROPSAdapter.md)                            | Procedure             |
    | [`Undo-WorkspaceOneDirectoryGroup`](./../../workspace-one-access/Undo-WorkspaceOneDirectoryGroup.md)      | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                                              | Type      |
    | --------------------------------------------------------------------------------------| --------- |
    | [`Add-vRLIAgentGroup`](./../../aria-suite/aria-operations-logs/Add-vRLIAgentGroup.md) | Procedure |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-intelligent-operations-management-v1/GUID-31B18AB1-9E88-4355-BECF-A90F1E1F7C19.html
