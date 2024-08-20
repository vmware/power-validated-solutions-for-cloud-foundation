# Export-NsxFederationJsonSpec

## Synopsis

Create JSON specification for NSX Federation.

## Syntax

```powershell
Export-NsxFederationJsonSpec [[-protectedWorkbook] <String>] [[-recoveryWorkbook] <String>] [-jsonFile] <String> [<CommonParameters>]
```

## Description

The Export-NsxFederationJsonSpec cmdlet creates the JSON specification file using the Planning and Preparation workbook to deploy NSX Federation:

- Validates that the Planning and Preparation workbooks are available
- Generates the JSON specification file using the Planning and Preparation workbooks

## Examples

### Example 1

```powershell
Export-NsxFederationJsonSpec -protectedWorkbook .\pnp-workbook.xlsx -recoveryWorkbook .\pnp-workbook.xlsx -jsonFile .\nsxFederationDeploySpec.json
```

This example creates a JSON specification for NSX Federation using the Planning and Preparation Workbooks.

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
