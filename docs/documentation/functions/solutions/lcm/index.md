# Aria Suite Lifecycle

VMware Aria Suite Lifecycle deployment is a prerequisite for the following solutions:

- [Intelligent Logging and Analytics](./../ila/index.md)
- [Intelligent Operations Management](./../iom/index.md)
- [Intelligent Network Visibility](./../inv/index.md)
- [Private Cloud Automation](./../pca/index.md)
- [Health Reporting and Monitoring](./../hrm/index.md)

Select an option for the prerequisites component.

=== ":material-location-enter: &nbsp; Deployment"

    The following functions can be use to perform the solution prerequisites.

    | Function                                                                                                | Type                  |
    | ------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-VrslcmPrerequisite`](Test-VrslcmPrerequisite.md)                                                 | Prerequisites         |
    | [`Export-vRSLCMJsonSpec`](Export-VrslcmJsonSpec.md)                                                     | End-to-End Deployment |
    | [`Invoke-vRSLCMDeployment`](Invoke-VrslcmDeployment.md)                                                 | End-to-End Deployment |
    | [`Add-vRSLCMMyVMwareAccount`](./../../aria-suite/aria-suite-lifecycle/Add-vRSLCMMyVMwareAccount.md)     | Procedure             |
    | [`Request-vRSLCMBundle`](./../../aria-suite/aria-suite-lifecycle/Request-vRSLCMBundle.md)               | Procedure             |
    | [`New-vRSLCMDeployment`](./../../aria-suite/aria-suite-lifecycle/New-vRSLCMDeployment.md)               | Procedure             |
    | [`Install-vRSLCMCertificate`](./../../aria-suite/aria-suite-lifecycle/Install-vRSLCMCertificate.md)     | Procedure             |
    | [`Connect-vRSLCMUpgradeIso`](./../../aria-suite/aria-suite-lifecycle/Connect-vRSLCMUpgradeIso.md)       | Procedure             |
    | [`Disconnect-vRSLCMUpgradeIso`](./../../aria-suite/aria-suite-lifecycle/Disconnect-vRSLCMUpgradeIso.md) | Procedure             |

=== ":material-location-exit: &nbsp; Removal"

    The following functions can be use to remove the solution prerequisites.

    | Function                                                                                                | Type                  |
    | ------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Invoke-vRSLCMDeployment`](Invoke-VrslcmDeployment.md)                                                 | End-to-End Deployment |
    | [`Undo-vRSLCMMyVMwareAccount`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMMyVMwareAccount.md)   | Procedure             |
    | [`Undo-vRSLCMDeployment`](./../../aria-suite/aria-suite-lifecycle/Undo-vRSLCMDeployment.md)             | Procedure             |
