# Intelligent Network Visibility for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [VMware Aria Suite Lifecycle](./../lcm/index.md)

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                | Type                  |
    | --------------------------------------------------------------------------------------- | --------------------- |
    | [`Export-InvJsonSpec`](Export-InvJsonSpec.md)                                           | End-to-End Deployment |
    | [`Update-vRSLCMPSPack`](./../../aria-suite/aria-suite-lifecycle/Update-vRSLCMPSPack.md) | Procedure             |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                           | Procedure             |
    | [`Add-vSphereRole`](./../../vsphere/Add-vSphereRole.md)                                 | Procedure             |
    | [`Add-vCenterGlobalPermission`](./../../vsphere/Add-vCenterGlobalPermission.md)         | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                       | Procedure             |
    | [`Add-NsxtPrincipalIdentity`](./../../nsx/Add-NsxtPrincipalIdentity.md)                 | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                       | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                         | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                | Type                  |
    | --------------------------------------------------------------------------------------- | --------------------- |
        | [`Export-InvJsonSpec`](Export-InvJsonSpec.md)                                       | End-to-End Deployment |
    | [`Undo-ContentLibrary`](./../../vsphere/Undo-ContentLibrary.md)                         | Procedure             |
    | [`Undo-vSphereRole`](./../../vsphere/Undo-vSphereRole.md)                               | Procedure             |
    | [`Undo-vCenterGlobalPermission`](./../../vsphere/Undo-vCenterGlobalPermission.md)       | Procedure             |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                     | Procedure             |
    | [`Undo-NsxtPrincipalIdentity`](./../../nsx/Undo-NsxtPrincipalIdentity.md)               | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                     | Procedure             |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-intelligent-network-visibility-v1/GUID-8E4C43CD-AFB2-48A6-B6F3-86BFBFE46C23.html
