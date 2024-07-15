# Cloud-Based Ransomware Recovery for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                  | Type                  |
    | ----------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-CbrPrerequisite`](Test-CbrPrerequisite.md)                                         | Prerequisites         |
    | [`Export-CbrJsonSpec`](Export-CbrJsonSpec.md)                                             | End-to-End Deployment |
    | [`Invoke-CbrDeployment`](Invoke-CbrDeployment.md)                                         | End-to-End Deployment |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                         | Procedure             |
    | [`Add-AntiAffinityRule`](./../../vsphere/Add-AntiAffinityRule.md)                         | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                           | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                  | Type                  |
    | ----------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-CbrPrerequisite`](Test-CbrPrerequisite.md)                                         | Prerequisites         |
    | [`Export-CbrJsonSpec`](Export-CbrJsonSpec.md)                                             | End-to-End Removal    |
    | [`Invoke-UndoCbrDeployment`](Invoke-UndoCbrDeployment.md)                                 | End-to-End Removal    |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                       | Procedure             |
    | [`Undo-AntiAffinityRule`](./../../vsphere/Undo-AntiAffinityRule.md)                       | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                                                  | Type                  |
    | ----------------------------------------------------------------------------------------- | --------------------- |
    | [`Export-CbrJsonSpec`](Export-CbrJsonSpec.md)                                             | End-to-End Deployment |
    | [`Invoke-CbrSolutionInterop`](Invoke-CbrSolutionInterop.md)                               | End-to-End Deployment |
    | [`Add-vROPSAdapterPing`](./../../aria-suite/aria-operations/Add-vROPSAdapterPing.md)      | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability Removal"

    The following functions can be use for the solution interoperability.

    | Function                                                                                  | Type                  |
    | ----------------------------------------------------------------------------------------- | --------------------- |
    | [`Export-CbrJsonSpec`](Export-CbrJsonSpec.md)                                             | End-to-End Removal    |
    | [`Invoke-UndoCbrSolutionInterop`](Invoke-UndoCbrSolutionInterop.md)                       | End-to-End Removal    |
    | [`Undo-vROPSAdapter`](./../../aria-suite/aria-operations/Undo-vROPSAdapter.md)            | Procedure             |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-cloud-based-ransomware-recovery-v1/GUID-43595310-BDC8-49EA-AE68-1DD53A817781.html
