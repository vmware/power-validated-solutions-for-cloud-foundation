# Export-vROPsJsonSpec

## Synopsis

Create VMware Aria Operations Deployment JSON specification

## Syntax

```powershell
Export-vROPsJsonSpec -server <String> -user <String> -pass <String> [-workbook <String>] [-nested] [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Export-vROPsJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation Workbook to deploy VMware Aria Operations using VMware Aria Suite Lifecycle. The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that the Planning and Preparation provided is available
- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the License, Certificate and Password in the Planning and Prep Preparation workbook have been
created in VMware Aria Suite Lifecycle locker
- Generates the deployment JSON specification file using the Planning and Preparation Workbook and details
from VMware Aria Suite Lifecycle named '\<management_domain_name\>-vropsDeploymentSpec.json'

## Examples

### Example 1

```powershell
Export-vROPsJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example creates a JSON specification file for deploying VMware Aria Operations using the Planning and Preparation Workbook data.

### Example 2

```powershell
Export-vROPsJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -nested
```

This example creates a reduce footprint JSON specification file for deploying VMware Aria Operations using the Planning and Preparation Workbook data.

### Example 3

```powershell
Export-vROPsJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customVersion 8.10.0
```

This example creates a reduce footprint JSON specification file for deploying VMware Aria Operations using a custom version and the Planning and Preparation Workbook data.

### Example 4

```powershell
Export-vROPsJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example creates a reduce footprint JSON specification file for deploying VMware Aria Operations using the Planning and Preparation Workbook data and deplpying OVAs from a vSphere Content Library.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

The Planning and Preparation Workbook (.xlsx) to use for the deployment.
If not provided, the cmdlet will prompt for the workbook.

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

### -nested

Specifies to use the reduced footprint JSON specification file for deploying VMware Aria Operations.

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

### -customVersion

The custom version to use for deploying VMware Aria Operations.

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

Specifies to use a vSphere Content Library for deploying VMware Aria Operations.

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

The vSphere Content Library to use for deploying VMware Aria Operations.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
