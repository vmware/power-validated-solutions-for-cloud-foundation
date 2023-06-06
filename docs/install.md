# Installing the Module

Verify that your system has a [supported edition and version](/power-validated-solutions-for-cloud-foundation/#powershell) of PowerShell installed.

Install the PowerShell [module dependencies](/power-validated-solutions-for-cloud-foundation/#module-dependencies) from the PowerShell Gallery by running the following commands:

```powershell
--8<-- "./docs/snippets/install-module.ps1"
```

If using PowerShell Core, import the modules before proceeding:

For example:

```powershell
--8<-- "./docs/snippets/import-module.ps1"
```

To verify the correct versions of the supporting modules are installed, run the following command in the PowerShell console.

```powershell
Test-PowerValidatedSolutionsPrereq
```

Once installed, any cmdlets associated with `PowerValidatedSolutions` and the supporting PowerShell modules will be available for use.

To view the cmdlets for available in the module, run the following command in the PowerShell console.

```powershell
Get-Command -Module PowerValidatedSolutions
```

To view the help for any cmdlet, run the `Get-Help` command in the PowerShell console.

For example:

```powershell
Get-Help -Name <cmdlet-name>
```

```powershell
Get-Help -Name <cmdlet-name> -Examples
```

```powershell
Get-Help -Name <cmdlet-name> -Full
```
