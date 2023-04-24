<img src=".github/icon-400px.svg" alt="A PowerShell Module for VMware Validated Soltions" width="150"></br></br>

# A PowerShell Module for VMware Validated Solutions

[<img src="https://img.shields.io/powershellgallery/v/PowerValidatedSolutions?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Gallery" >][module-powervalidatedsolutions]&nbsp;&nbsp;[<img src="https://img.shields.io/badge/Changelog-Read-blue?style=for-the-badge&logo=github&logoColor=white" alt="CHANGELOG" >][changelog]&nbsp;&nbsp;[<img src="https://img.shields.io/powershellgallery/dt/PowerValidatedSolutions?style=for-the-badge&logo=powershell&logoColor=white" alt="PowerShell Gallery Downloads" >][module-powervcf]&nbsp;&nbsp;

## Overview

`PowerValidatedSolutions` is a PowerShell module that has been written to support the automation of many procedures associated with the implementation of the [VMware Validated Solutions for VMware Cloud Foundation][vvs].

The module helps reduce human error, delivers consistency and robustness, and accelerates the time-to-deploy these solutions. The module's cmdlets reduce complexity by automating the deployment and configuration steps using the product APIs or command-line tools.

This infrastructure-as-code model enables you to use the module "out-of-the-box" or in your own end-to-end automation.

## Requirements

### Platform

* [VMware Cloud Foundation][vmware-cloud-foundation] 4.3 or higher

### Powershell

* [Microsoft Windows PowerShell][microsoft-powershell] 5.1

### PowerShell Modules

* [`VMware.PowerCLI`][module-vmware-powercli] 13.0.0 or higher
* [`VMware.vSphere.SsoAdmin`][module-vmware-vsphere-ssoadmin] 1.3.9 or higher
* [`PowerVCF`][module-powervcf] 2.3.0 or higher
* [`ImportExcel`][module-importexcel] 7.1.1 or higher

## Installing the Module

If you want to use this PowerShell module to perform implementation and configuration procedures, you must install the modules and its pre-requisites from the PowerShell Gallery.

Verify that your system has a supported edition and version of PowerShell installed.

Install the supporting PowerShell modules from the PowerShell Gallery by running the following commands:

```powershell
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module -Name VMware.PowerCLI -MinimumVersion 13.0.0
Install-Module -Name VMware.vSphere.SsoAdmin -MinimumVersion 1.3.9
Install-Module -Name ImportExcel -MinimumVersion 7.8.4
Install-Module -Name PowerVCF -MinimumVersion 2.3.0
Install-Module -Name PowerValidatedSolutions -MinimumVersion 2.2.0
```

To verify the modules are installed, run the following command in the PowerShell console.

```powershell
Get-InstalledModule
```

Once installed, any cmdlets associated with `PowerValidatedSolutions` and the supporting PowerShell modules will be available for use.

To view the cmdlets available in the module, run the following command in the PowerShell console.

```powershell
Get-Command -Module PowerValidatedSolutions
```

To view the help for any cmdlet, run the `Get-Help` command in the PowerShell console.

For example:

```powershell
Get-Help -Name <cmdlet name>
```

```powershell
Get-Help -Name <cmdlet name> -Examples
```
## Contributing

The project team welcomes contributions from the community. Before you start working with PowerValidatedSolutions, please
read our [Developer Certificate of Origin][vmware-cla-dco]. All contributions to this repository must be
signed as described on that page. Your signature certifies that you wrote the patch or have the right to pass it on
as an open-source patch.

For more detailed information, refer to the [contribution guidelines][contributing] to get started.

## Disclaimer

This PowerShell module is not supported by VMware Support.

If you discover a bug or would like to suggest an enhancement, please [open an issue][issues].

## License

Copyright 2021-2023 VMware, Inc.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[//]: Links

[changelog]: CHANGELOG.md
[contributing]: CONTRIBUTING.md
[issues]: https://github.com/vmware-samples/power-validated-solutions-for-cloud-foundation/issues
[vvs]: https://vmware.com/go/vvs
[microsoft-powershell]: https://docs.microsoft.com/en-us/powershell
[module-vmware-powercli]: https://www.powershellgallery.com/packages/VMware.PowerCLI
[module-vmware-vsphere-ssoadmin]: https://www.powershellgallery.com/packages/VMware.vSphere.SsoAdmin
[module-powervalidatedsolutions]: https://www.powershellgallery.com/packages/PowerValidatedSolutions
[module-powervcf]: https://www.powershellgallery.com/packages/PowerVCF
[module-importexcel]: https://www.powershellgallery.com/packages/ImportExcel
[vmware-cloud-foundation]: https://docs.vmware.com/en/VMware-Cloud-Foundation
[vmware-cla-dco]: https://cla.vmware.com/dco
