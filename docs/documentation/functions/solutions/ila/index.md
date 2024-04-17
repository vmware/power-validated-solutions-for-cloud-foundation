# Intelligent Logging and Analytics for VMware Cloud Foundation

[:material-cloud-check: &nbsp; Documentation][solution]{ .md-button }

!!! note "Solution Prerequisites"

    The following are prerequisites for this solution:

    - [VMware Aria Suite Lifecycle](./../lcm.md)
    - [Identity and Access Management](./../iam/index.md)

Select an option for the solution.

=== ":material-location-enter: &nbsp; Solution Deployment"

    The following functions can be use to perform the solution deployment.

    | Function                                                                                                            | Type                  |
    | ------------------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-IlaPrerequisite`](Test-IlaPrerequisite.md)                                                                   | Prerequisites         |
    | [`Export-IlaJsonSpec`](./../../solutions/ila/Export-IlaJsonSpec.md)                                                 | End-to-End Deployment |
    | [`Invoke-IlaDeployment`](./../../solutions/ila/Invoke-IlaDeployment.md)                                             | End-to-End Deployment |
    | [`Request-vRLIMscaSignedCertificate`](./../../aria-suite/aria-operations-logs/Request-vRLIMscaSignedCertificate.md) | Procedure             |
    | [`Update-vRSLCMPSPack`](./../../aria-suite/aria-suite-lifecycle/Update-vRSLCMPSPack.md)                             | Procedure             |
    | [`Add-ContentLibrary`](./../../vsphere/Add-ContentLibrary.md)                                                       | Procedure             |
    | [`New-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerLicense.md)                     | Procedure             |
    | [`Import-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Import-vRSLCMLockerCertificate.md)       | Procedure             |
    | [`New-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMLockerPassword.md)                   | Procedure             |
    | [`Export-vRLIJsonSpec`](./../../aria-suite/aria-operations-logs/Export-vRLIJsonSpec.md)                             | Procedure             |
    | [`New-vRLIDeployment`](./../../aria-suite/aria-operations-logs/New-vRLIDeployment.md)                               | Procedure             |
    | [`Add-VMFolder`](./../../vsphere/Add-VMFolder.md)                                                                   | Procedure             |
    | [`Move-VMtoFolder`](./../../vsphere/Move-VMtoFolder.md)                                                             | Procedure             |
    | [`Add-VmGroup`](./../../vsphere/Add-VmGroup.md)                                                                     | Procedure             |
    | [`Add-vRLISmtpConfiguration`](./../../aria-suite/aria-operations-logs/Add-vRLISmtpConfiguration.md)                 | Procedure             |
    | [`Add-vRLILogArchive`](./../../aria-suite/aria-operations-logs/Add-vRLILogArchive.md)                               | Procedure             |
    | [`Add-vRLIAuthenticationAD`](./../../aria-suite/aria-operations-logs/Add-vRLIAuthenticationAD.md)                   | Procedure             |
    | [`Add-vRLIAuthenticationGroup`](./../../aria-suite/aria-operations-logs/Add-vRLIAuthenticationGroup.md)             | Procedure             |
    | [`Register-vRLIWorkloadDomain`](./../../aria-suite/aria-operations-logs/Register-vRLIWorkloadDomain.md)             | Procedure             |
    | [`Add-NsxtNodeProfileSyslogExporter`](./../../nsx/Add-NsxtNodeProfileSyslogExporter.md)                             | Procedure             |
    | [`Enable-vRLIContentPack`](./../../aria-suite/aria-operations-logs/Enable-vRLIContentPack.md)                       | Procedure             |
    | [`Install-vRLIPhotonAgent`](./../../aria-suite/aria-operations-logs/Install-vRLIPhotonAgent.md)                     | Procedure             |
    | [`Add-vRLIAgentGroup`](./../../aria-suite/aria-operations-logs/Add-vRLIAgentGroup.md)                               | Procedure             |
    | [`Add-vRLILogForwarder`](./../../aria-suite/aria-operations-logs/Add-vRLILogForwarder.md)                           | Procedure             |

=== ":material-location-exit: &nbsp; Solution Removal"

    The following functions can be use to remove the solution deployment.

    | Function                                                                                                  | Type                  |
    | --------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-IlaPrerequisite`](Test-IlaPrerequisite.md)                                                         | Prerequisites         |
    | [`Invoke-UndoIlaDeployment`](Invoke-UndoIlaDeployment.md)                                                 | End-to-End Removal    |
    | [`Undo-ContentLibrary`](./../../vsphere/Undo-ContentLibrary.md)                                           | Procedure             |
    | [`Undo-vRSLCMLockerLicense`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerLicense.md)         | Procedure             |
    | [`Undo-vRSLCMLockerCertificate`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerCertificate.md) | Procedure             |
    | [`Undo-vRSLCMLockerPassword`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMLockerPassword.md)       | Procedure             |
    | [`Undo-vRLIDeployment`](./../../aria-suite/aria-operations-logs/Undo-vRLIDeployment.md)                   | Procedure             |
    | [`Undo-VMFolder`](./../../vsphere/Undo-VMFolder.md)                                                       | Procedure             |

=== ":material-transit-connection-variant: &nbsp; Solution Interoperability"

    The following functions can be use for the solution interoperability.

    | Function                                                                                        | Type      |
    | ----------------------------------------------------------------------------------------------- | --------- |
    | [`Add-NetworkSegment`](./../../aria-suite/aria-operations/Update-vROPSAdapterCollecterGroup.md) | Procedure |
    | [`Add-vROPSAdapterPing`](./../../aria-suite/aria-operations/Add-vROPSAdapterPing.md)            | Procedure |

[solution]: https://docs.vmware.com/en/VMware-Cloud-Foundation/services/vcf-intelligent-logging-and-analytics-v1/GUID-42022E8E-7C84-4864-AE49-69D016EF5600.html
