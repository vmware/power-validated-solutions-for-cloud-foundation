![](https://img.shields.io/powershellgallery/v/PowerValidatedSolutions?style=for-the-badge)
[<img alt="Changelog" src="https://img.shields.io/badge/Changelog-Read-blue?style=for-the-badge">](CHANGELOG.md)
![](https://img.shields.io/powershellgallery/dt/PowerValidatedSolutions?style=for-the-badge)

# PowerValidatedSolutions
## Overview
PowerValidatedSolutions is a PowerShell Module that has been written to explicitly support the automation of various procedures associated with the implementation of Validated Solutions for VMware Cloud Foundation. 

The intent is to reduce human error, deliver consistency and robustness as well as expedite the time to deploy for customers by developing cmdlets that remove the complexities associated with performing deployment and configuration steps using Public/Private APIs or command line based tooling.

Using the cmdlets developed, we are providing our customers an infrastructure-as-code deployment model allowing them to develop their own in-house end-to-end automation.

## Installing the module

If you want to use this Microsoft PowerShell module to perform implementation and configuration procedures, you must first install a number of PowerShell module from the PowerShell Gallery. To do this, run the following in your PowerShell console:

```PowerShell
Install-Module -Name VMware.PowerCLI -MinimumVersion 12.4.1
Install-Module -Name VMware.vSphere.SsoAdmin -MinimumVersion 1.3.7
Install-Module -Name ImportExcel -MinimumVersion 7.1.1
Install-Module -Name PowerVCF -MinimumVersion 2.1.7
Install-Module -Name PowerValidatedSolutions -MinimumVersion 1.5.0
```

To verify the modules are installed, run the following command in the PowerShell console.

```PowerShell
Get-InstalledModule
```

Once installed, any new cmdlet associated with PowerValidatedSolutions will be available for use.

## Known Issues

Currently tracking no known issues.

## Contributing

The PowerValidatedSolutions project team welcomes contributions from the community. Before you start working with PowerValidatedSolutions, please
read our [Developer Certificate of Origin](https://cla.vmware.com/dco). All contributions to this repository must be
signed as described on that page. Your signature certifies that you wrote the patch or have the right to pass it on
as an open-source patch. For more detailed information, refer to [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Copyright 2021-2022 VMware, Inc.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.