# Export-PdrJsonSpec

## Synopsis

Create JSON specification for Site Protection and Disaster Recovery

## Syntax

``` powershell
Export-PdrJsonSpec [[-protectedWorkbook] <String>] [[-recoveryWorkbook] <String>] [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Export-PdrJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation workbook to deploy and configure Site Protection and Disaster Recovery:

- Validates that the Planning and Preparation is available
- Generates the JSON specification file using the Planning and Preparation workbook

## Examples

### Example 1

``` powershell
Export-PdrJsonSpec -protectedWorkbook .\pnp-workbook.xlsx -recoveryWorkbook .\pnp-workbook.xlsx -jsonFile .\pdrDeploySpec.json
```

This example creates a JSON specification for Site Protection and Disaster Recovery using the Planning and Preparation Workbook.

## Parameters

### -protectedWorkbook

The path to the Planning and Preparation workbook (.xlsx) file for the protected site.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -recoveryWorkbook

The path to the Planning and Preparation workbook (.xlsx) file for the recovery site.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -jsonFile

The path to the JSON specification file to be created.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
