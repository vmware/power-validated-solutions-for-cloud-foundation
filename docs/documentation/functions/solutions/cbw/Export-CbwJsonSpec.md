# Export-CbwJsonSpec

## Synopsis

Create JSON specification for Cloud-Based Workload Protection.

## Syntax

``` powershell
Export-CbwJsonSpec [-workbook] <String> [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Export-CbwJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation workbook to deploy and configure Cloud-Based Workload Protection:

- Validates that the Planning and Preparation is available
- Generates the JSON specification file using the Planning and Preparation workbook

## Examples

### Example 1

``` powershell
Export-CbwJsonSpec -workbook .\pnp-workbook.xlsx -jsonFile .\cbwDeploySpec.json
```

This example creates a JSON specification for Cloud-Based Workload Protection using the Planning and Preparation Workbook.

## Parameters

### -workbook

The path to the Planning and Preparation workbook (.xlsx) file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
