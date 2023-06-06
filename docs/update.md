# Updating the Module

Update the PowerShell module from the PowerShell Gallery by running the following commands:

```powershell
--8<-- "./docs/snippets/update-module.ps1"
```

To verify that the PowerShell module is updated, run the following command in the PowerShell console.

```powershell
--8<-- "./docs/snippets/installed-module.ps1"
```

To verify the [module dependencies](/power-validated-solutions-for-cloud-foundation/#module-dependencies) meet the minimum requirements, use the `Test-PowerValidatedSolutionsPrereq` cmdlet.

If a dependency does not meet the minimum requirements, run the appropriate `Update-Module` command for the dependency in the PowerShell console.

```powershell
--8<-- "./docs/snippets/update-modules.ps1"
```
