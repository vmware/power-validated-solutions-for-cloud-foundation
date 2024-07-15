# Developer Ready Infrastructure for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [Identity and Access Management](./../iam/index.md)

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                                  | Type                  |
    | --------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-DriPrerequisite`](Test-DriPrerequisite.md)                                                         | Prerequisites         |
    | [`Export-DriJsonSpec`](Export-DriJsonSpec.md)                                                             | End-to-End Deployment |
    | [`Invoke-DriDeployment`](Invoke-DriDeployment.md)                                                         | End-to-End Deployment |
    | [`Add-NetworkSegment`](./../../nsx/Add-NetworkSegment.md)                                                 | Procedure             |
    | [`Add-PrefixList`](./../../nsx/Add-PrefixList.md)                                                         | Procedure             |
    | [`Add-RouteMap`](./../../nsx/Add-RouteMap.md)                                                             | Procedure             |
    | [`Set-DatastoreTag`](./../../vsphere/Set-DatastoreTag.md)                                                 | Procedure             |
    | [`Add-StoragePolicy`](./../../vsphere/Add-StoragePolicy.md)                                               | Procedure             |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                                             | Procedure             |
    | [`Enable-SupervisorCluster`](./../../vsphere-tanzu/Enable-SupervisorCluster.md)                           | Procedure             |
    | [`New-SupervisorClusterCSR`](./../../vsphere-tanzu/New-SupervisorClusterCSR.md)                           | Procedure             |
    | [`Request-SignedCertificate`](./../../certificates/Request-SignedCertificate.md)                          | Procedure             |
    | [`Install-SupervisorClusterCertificate`](./../../vsphere-tanzu/Install-SupervisorClusterCertificate.md)   | Procedure             |
    | [`Add-SupervisorClusterLicense`](./../../vsphere-tanzu/Add-SupervisorClusterLicense.md)                   | Procedure             |
    | [`Add-Namespace`](./../../vsphere-tanzu/Add-Namespace.md)                                                 | Procedure             |
    | [`Add-NamespacePermission`](./../../vsphere-tanzu/Add-NamespacePermission.md)                             | Procedure             |
    | [`Enable-Registry`](./../../vsphere-tanzu/Enable-Registry.md)                                             | Procedure             |
    | [`Add-NamespaceVmClass`](./../../vsphere-tanzu/Add-NamespaceVmClass.md)                                   | Procedure             |
    | [`Add-TanzuKubernetesCluster`](./../../vsphere-tanzu/Add-TanzuKubernetesCluster.md)                       | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                                  | Type               |
    | --------------------------------------------------------------------------------------------------------- | -------------------|
    | [`Test-DriPrerequisite`](Test-DriPrerequisite.md)                                                         | Prerequisites      |
    | [`Export-DriJsonSpec`](Export-DriJsonSpec.md)                                                             | End-to-End Removal |
    | [`Invoke-UndoDriDeployment`](Invoke-UndoDriDeployment.md)                                                 | End-to-End Removal |
    | [`Undo-NetworkSegment`](./../../nsx/Undo-NetworkSegment.md)                                               | Procedure          |
    | [`Undo-PrefixList`](./../../nsx/Undo-PrefixList.md)                                                       | Procedure          |
    | [`Undo-RouteMap`](./../../nsx/Undo-RouteMap.md)                                                           | Procedure          |
    | [`Undo-DatastoreTag`](./../../vsphere/Undo-DatastoreTag.md)                                               | Procedure          |
    | [`Undo-StoragePolicy`](./../../vsphere/Undo-StoragePolicy.md)                                             | Procedure          |
    | [`Undo-ContentLibrary`](./../../vsphere/Undo-ContentLibrary.md)                                           | Procedure          |
    | [`Undo-SupervisorCluster`](./../../vsphere-tanzu/Undo-SupervisorCluster.md)                               | Procedure          |
    | [`Undo-Namespace`](./../../vsphere-tanzu/Undo-Namespace.md)                                               | Procedure          |
    | [`Undo-NamespacePermission`](./../../vsphere-tanzu/Undo-NamespacePermission.md)                           | Procedure          |
    | [`Undo-Registry`](./../../vsphere-tanzu/Undo-Registry.md)                                                 | Procedure          |
    | [`Undo-TanzuKubernetesCluster`](./../../vsphere-tanzu/Undo-TanzuKubernetesCluster.md)                     | Procedure          |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                  | Type      |
    | --------------------------------------------------------- | --------- |
    | [`Add-NetworkSegment`](./../../nsx/Add-NetworkSegment.md) | Procedure |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-developer-ready-infrastructure-v1/GUID-641F8C25-CA4E-4F27-B467-484C849C7332.html
