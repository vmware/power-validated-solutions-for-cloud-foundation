# Export-vRLIJsonSpec

## Synopsis

Create VMware Aria Operations for Logs Deployment JSON specification using the Planning and Preparation Workbook

## Syntax

```powershell
Export-vRLIJsonSpec -server <String> -user <String> -pass <String> [-workbook <String>]
 [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Export-vRLIJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation Workbook
to deploy VMware Aria Operations for Logs using VMware Aria Suite Lifecycle.
The cmdlet connects to SDDC Manager
using the -server, -user, and -password values.

- Validates that the Planning and Preparation provided is available
- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the License, Certificate and Password in the Planning and Prep Preparation workbook have been
created in VMware Aria Suite Lifecycle locker
- Generates the deployment JSON specification file using the Planning and Preparation Workbook and details
from VMware Aria Suite Lifecycle named '\<management_domain_name\>-vrliDeploymentSpec.json'.

## Examples

### Example 1

```powershell
Export-vRLIJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example creates a JSON specification file for deploying VMware Aria Operations for Logs using the Planning and Preparation Workbook data

### Example 2

```powershell
Export-vRLIJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customVersion 8.8.4
```

This example creates a JSON specification file for deploying VMware Aria Operations for Logs using a custom version and the Planning and Preparation Workbook data

### Example 3

```powershell
Export-vRLIJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example creates a JSON specification file for deploying VMware Aria Operations for Logs deploying the OVA from a vSphere Conent Library and the Planning and Preparation Workbook data.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -user

The SDDC Manager vSphere SSO username.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -pass

The SDDC Manager vSphere SSO password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -workbook

The Planning and Preparation Workbook (.xlsx) file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -customVersion

The custom version of VMware Aria Operations for Logs to deploy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -useContentLibrary

Use a vSphere Content Library to deploy the VMware Aria Operations for Logs OVA.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -contentLibrary

The vSphere Content Library name to use to deploy the VMware Aria Operations for Logs OVA

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
