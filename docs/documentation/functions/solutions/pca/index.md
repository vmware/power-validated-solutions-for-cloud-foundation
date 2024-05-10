# Private Cloud Automation for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [VMware Aria Suite Lifecycle](./../lcm/index.md)
    - [Workspace ONE Access (Global)](./../wsa/index.md)
    - [Identity and Access Management](./../iam/index.md)
  
Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                                       | Type                  |
    | -------------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-PcaPrerequisite`](Test-PcaPrerequisite.md)                                                              | Prerequisites         |
    | [`Export-PcaJsonSpec`](Export-PcaJsonSpec.md)                                                                  | End-to-End Deployment |
    | [`Invoke-PcaDeployment`](Invoke-PcaDeployment.md)                                                              | End-to-End Deployment |
    | [`Request-vRAMscaSignedCertificate`](./../../aria-suite/aria-automation/Request-vRAMscaSignedCertificate.md)   | Procedure             |
    | [`Update-vRSLCMPSPack`](./../../aria-suite/aria-suite-lifecycle/Update-vRSLCMPSPack.md)                        | Procedure             |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                                                  | Procedure             |
    | [`New-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerLicense.md)                | Procedure             |
    | [`Import-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Import-vRSLCMLockerCertificate.md)  | Procedure             |
    | [`New-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerPassword.md)              | Procedure             |
    | [`Export-PcaJsonSpec`](Export-PcaJsonSpec.md)                                                                  | Procedure             |
    | [`New-vRADeployment`](./../../aria-suite/aria-automation/New-vRADeployment.md)                                 | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                                              | Procedure             |
    | [`Move-VMtoFolder`](./../../vsphere/Move-VMtoFolder.md)                                                        | Procedure             |
    | [`Add-ResourcePool`](./../../vsphere/Add-ResourcePool.md)                                                      | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                                              | Procedure             |
    | [`Add-ClusterGroup`](./../../vsphere/Add-ClusterGroup.md)                                                      | Procedure             |
    | [`Add-VmStartupRule`](./../../vsphere/Add-VmStartupRule.md)                                                    | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                                                | Procedure             |
    | [`Update-vRAOrganizationDisplayName`](./../../aria-suite/aria-automation/Update-vRAOrganizationDisplayName.md) | Procedure             |
    | [`Add-WorkspaceOneDirectoryGroup`](./../../workspace-one-access/Add-WorkspaceOneDirectoryGroup.md)             | Procedure             |
    | [`Add-vRAGroup`](./../../aria-suite/aria-automation/Add-vRAGroup.md)                                           | Procedure             |
    | [`Add-vSphereRole`](./../../vsphere/Add-vSphereRole.md)                                                        | Procedure             |
    | [`Add-vCenterGlobalPermission`](./../../vsphere/Add-vCenterGlobalPermission.md)                                | Procedure             |
    | [`Set-vCenterPermission`](./../../vsphere/Set-vCenterPermission.md)                                            | Procedure             |
    | [`Add-NsxtLdapRole`](./../../nsx/Add-NsxtLdapRole.md)                                                          | Procedure             |
    | [`New-vRACloudAccount`](./../../aria-suite/aria-automation/New-vRACloudAccount.md)                             | Procedure             |
    | [`Update-vRACloudAccountZone`](./../../aria-suite/aria-automation/Update-vRACloudAccountZone.md)               | Procedure             |
    | [`Add-vRANotification`](./../../aria-suite/aria-automation/Add-vRANotification.md)                             | Procedure             |
    | [`Add-vROTrustedCertificate`](./../../aria-suite/aria-automation-orchestrator/Add-vROTrustedCertificate.md)    | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                                  | Type                  |
    | --------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-PcaPrerequisite`](Test-PcaPrerequisite.md)                                                         | Prerequisites         |
    | [`Export-PcaJsonSpec`](Export-PcaJsonSpec.md)                                                             | End-to-End Removal    |
    | [`Invoke-UndoPcaDeployment`](Invoke-UndoPcaDeployment.md)                                                 | End-to-End Removal    |
    | [`Undo-ContentLibrary`](./../../vsphere/Undo-ContentLibrary.md)                                           | Procedure             |
    | [`Undo-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerLicense.md)         | Procedure             |
    | [`Undo-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerCertificate.md) | Procedure             |
    | [`Undo-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerPassword.md)       | Procedure             |
    | [`Undo-vRADeployment`](./../../aria-suite/aria-automation/Undo-vRADeployment.md)                          | Procedure             |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                                       | Procedure             |
    | [`Undo-ResourcePool`](./../../vsphere/Undo-ResourcePool.md)                                               | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                                       | Procedure             |
    | [`Undo-ClusterGroup`](./../../vsphere/Undo-ClusterGroup.md)                                               | Procedure             |
    | [`Undo-VmStartupRule`](./../../vsphere/Undo-VmStartupRule.md)                                             | Procedure             |
    | [`Undo-vRACloudAccount`](./../../aria-suite/aria-automation/Undo-vRACloudAccount.md)                      | Procedure             |
    | [`Remove-vROvCenterServer`](./../../aria-suite/aria-automation-orchestrator/Remove-vROvCenterServer.md)   | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                                                                     | Type      |
    | ------------------------------------------------------------------------------------------------------------ | --------- |
    | [`New-vRAvROPSIntegrationItem`](./../../aria-suite/aria-automation/New-vRAvROPSIntegrationItem.md)           | Procedure |
    | [`Add-vRAUser`](./../../aria-suite/aria-automation/Add-vRAUser.md)                                           | Procedure |
    | [`Update-vROPSvRAAdapterCredential`](./../../aria-suite/aria-operations/Update-vROPSvRAAdapterCredential.md) | Procedure |
    | [`Update-vRACloudAccountZone`](./../../aria-suite/aria-automation/Update-vRACloudAccountZone.md)             | Procedure |
    | [`Add-vROPSAdapterPing`](./../../aria-suite/aria-operations/Add-vROPSAdapterPing.md)                         | Procedure |
    | [`Add-vRLIAgentGroup`](./../../aria-suite/aria-operations-logs/Add-vRLIAgentGroup.md)                        | Procedure |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-private-cloud-automation-v1/GUID-33896484-4331-46F1-8875-B487BBEDCE05.html
