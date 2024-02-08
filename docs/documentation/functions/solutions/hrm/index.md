# Health Reporting and Monitoring for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [VMware Aria Suite Lifecycle](./../lcm.md)
    - [Workspace ONE Access (Global)](./../wsa.md)
    - [Intelligent Operations Management](./../iom/index.md)

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                  | Type                  |
    | ------------------------------------------------------------------------- | --------------------- |
    | [`Export-HrmJsonSpec`](Export-HrmJsonSpec.md)                             | End-to-End Deployment |
    | [`Invoke-HrmDeployment`](Invoke-HrmDeployment.md)                         | End-to-End Deployment |
    | [`Deploy-PhotonAppliance`](Deploy-PhotonAppliance.md)                     | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                         | Procedure             |
    | [`Move-VMtoFolder`](./../../vsphere/Move-VMtoFolder.md)                   | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                           | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                         | Procedure             |
    | [`Add-SddcManagerRole`](./../../sddc-manager/Add-SddcManagerRole.md)      | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                  | Type               |
    | ------------------------------------------------------------------------- | ------------------ |
    | [`Export-HrmJsonSpec`](Export-HrmJsonSpec.md)                             | End-to-End Removal |
    | [`Invoke-UndoHrmDeployment`](Invoke-UndoHrmDeployment.md)                 | End-to-End Removal |
    | [`Remove-PhotonAppliance`](Remove-PhotonAppliance.md)                     | Procedure          |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                       | Procedure          |
    | [`Undo-SddcManagerRole`](./../../sddc-manager/Undo-SddcManagerRole.md)    | Procedure          |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-health-reporting-and-monitoring-v1/GUID-CF73FFF1-7875-4A84-BECF-0EB4CA60279D.html
