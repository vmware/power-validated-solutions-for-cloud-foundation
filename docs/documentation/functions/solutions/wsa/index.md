# Workspace ONE Access (Global)

Workspace ONE Access (Global) deployment is a prerequisite for the following solutions:

- [Intelligent Operations Management](./../iom/index.md)
- [Private Cloud Automation](./../pca/index.md)
- [Health Reporting and Monitoring](./../hrm/index.md)

Select an option for the solution Prerequisites.

=== ":material-location-enter: &nbsp; Prerequisites Deployment"

    The following functions can be use to perform the solution prerequisites.

    | Function                                                                                                | Type                  |
    | ------------------------------------------------------------------------------------------------------- | --------------------- |
    | [`Test-GlobalWsaPrerequisite`](Test-GlobalWsaPrerequisite.md)                                           | Prerequisites         |
    | [`Export-GlobalWsaJsonSpec`](Export-GlobalWsaJsonSpec.md)                                               | End-to-End Deployment |
    | [`Invoke-GlobalWsaDeployment`](Invoke-GlobalWsaDeployment.md)                                           | End-to-End Deployment |
    | [`Request-WSAMscaSignedCertificate`](./../../workspace-one-access/Request-WSAMscaSignedCertificate.md)  | End-to-End Deployment |
    | [`Export-WsaJsonSpec`](./../../workspace-one-access/Export-WsaJsonSpec.md)                              | Procedure             |
    | [`New-WSADeployment`](./../../workspace-one-access/New-WSADeployment.md)                                | Procedure             |

=== ":material-location-exit: &nbsp; Prerequisites Removal"

    The following functions can be use to remove the solution prerequisites.

    | Function                                                                                        | Type                  |
    | ----------------------------------------------------------------------------------------------- | --------------------- |
    | [`Invoke-UndoGlobalWsaDeployment`](Invoke-UndoGlobalWsaDeployment.md)                           | End-to-End Deployment |
    | [`Undo-WSADeployment`](./../../workspace-one-access/Undo-WSADeployment.md)                      | Procedure             |
