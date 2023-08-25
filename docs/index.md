<!-- markdownlint-disable first-line-h1 no-inline-html -->

<img src="assets/images/icon-color.svg" alt="PowerShell Module for VMware Validated Solutions" width="150">

# PowerShell Module for VMware Validated Solutions

`PowerValidatedSolutions` is an open source PowerShell module that supports the automation of many procedures associated with the implementation of the [VMware Validated Solutions][vvs] for [VMware Cloud Foundation][docs-vmware-cloud-foundation].

The module helps reduce human error, delivers consistency and robustness, and accelerates the time-to-deploy these solutions. The module's cmdlets reduce complexity by automating the deployment and configuration steps using the product APIs or command-line tools.

This infrastructure-as-code model enables you to use the module to accelerate the deployment and management of the VMware Validate Solutions or use it in your own end-to-end automation.

[:material-powershell: &nbsp; PowerShell Gallery][psgallery-module-pvs]{ .md-button .md-button--primary } &nbsp; &nbsp; [:simple-blueprint: &nbsp; VMware Validated Solutions][vvs]{ .md-button .md-button--primary }

## Requirements

### Platforms

The following table lists the supported platforms for this module.

Platform                                                     | Supported
-------------------------------------------------------------|------------------------------------
:fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 5.0 | :fontawesome-solid-check:{ .green }
:fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 4.5 | :fontawesome-solid-check:{ .green }
:fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 4.4 | :fontawesome-solid-check:{ .green }
:fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 4.3 | :fontawesome-solid-check:{ .green }

### Operating Systems

The following table lists the supported operating systems for this module.

Operating System                                                       | Version
-----------------------------------------------------------------------|-----------
:fontawesome-brands-windows: &nbsp; Microsoft Windows Server           | 2019, 2022
:fontawesome-brands-windows: &nbsp; Microsoft Windows                  | 10, 11

### PowerShell

The following table lists the supported editions and versions of PowerShell for this module.

Edition                                                                           | Version
----------------------------------------------------------------------------------|----------
:material-powershell: &nbsp; [Microsoft Windows PowerShell][microsoft-powershell] | 5.1

### Module Dependencies

The following table lists the required PowerShell module dependencies for this module.

PowerShell Module                                    | Version   | Publisher     | Reference
-----------------------------------------------------|-----------|---------------|---------------------------------------------------------------------------
[VMware.PowerCLI][psgallery-module-powercli]         | >= 13.1.0 | VMware, Inc.  | :fontawesome-solid-book: &nbsp; [Documentation][developer-module-powercli]
[VMware.vSphere.SsoAdmin][psgallery-module-ssoadmin] | >= 1.3.9  | VMware, Inc.  | :fontawesome-brands-github: &nbsp; [GitHub][github-module-ssoadmin]
[PowerVCF][psgallery-module-powervcf]                | >= 2.3.0  | VMware, Inc.  | :fontawesome-solid-book: &nbsp; [Documentation][docs-module-powervcf]
[ImportExcel][psgallery-module-importexcel]          | >= 7.8.5  | Douglas Finke | :fontawesome-brands-github: &nbsp; [GitHub][github-module-importexcel]

## Related Projects

The following table lists the related projects for this use this module.

Project                                                                                                         | Reference
----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------
[PowerShell Module for VMware Cloud Foundation Reporting][psgallery-module-reporting]                           | :fontawesome-solid-book: &nbsp; [Documentation][docs-module-reporting]
[PowerShell Module for VMware Cloud Foundation Certificate Management][psgallery-module-certificate-management] | :fontawesome-solid-book: &nbsp; [Documentation][docs-module-certificate-management]
[PowerShell Module for VMware Cloud Foundation Password Management][psgallery-module-password-management]       | :fontawesome-solid-book: &nbsp; [Documentation][docs-module-password-management]
[PowerShell Module for VMware Cloud Foundation Power Management][psgallery-module-power-management]             | :fontawesome-solid-book: &nbsp; [Documentation][docs-module-power-management]

[microsoft-powershell]: https://docs.microsoft.com/en-us/powershell
[docs-module-certificate-management]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation-certificate-management
[docs-module-password-management]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation-password-management
[docs-module-powervcf]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation
[docs-module-power-management]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation-power-management
[docs-module-reporting]: https://vmware.github.io/powershell-module-for-vmware-cloud-foundation-reporting
[docs-vmware-cloud-foundation]: https://docs.vmware.com/en/VMware-Cloud-Foundation/index.html
[psgallery-module-importexcel]: https://www.powershellgallery.com/packages/ImportExcel
[psgallery-module-powercli]: https://www.powershellgallery.com/packages/VMware.PowerCLI
[psgallery-module-powervcf]: https://www.powershellgallery.com/packages/PowerVCF
[psgallery-module-reporting]: https://www.powershellgallery.com/packages/VMware.CloudFoundation.Reporting
[psgallery-module-certificate-management]: https://www.powershellgallery.com/packages/VMware.CloudFoundation.CertificateManagement
[psgallery-module-password-management]: https://www.powershellgallery.com/packages/VMware.CloudFoundation.PasswordManagement
[psgallery-module-power-management]: https://www.powershellgallery.com/packages/VMware.CloudFoundation.PowerManagement
[psgallery-module-pvs]: https://www.powershellgallery.com/packages/PowerValidatedSolutions
[psgallery-module-ssoadmin]: https://www.powershellgallery.com/packages/VMware.vSphere.SsoAdmin
[developer-module-powercli]: https://developer.vmware.com/tool/vmware-powercli
[github-module-importexcel]: https://github.com/dfinke/ImportExcel
[github-module-powervcf]: https://github.com/vmware/powershell-module-for-vmware-cloud-foundation
[github-module-ssoadmin]: https://github.com/vmware/PowerCLI-Example-Scripts/tree/master/Modules/VMware.vSphere.SsoAdmin
[vvs]: https://www.vmware.com/go/vvs
