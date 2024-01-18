# Export-IlaJsonSpec

## Synopsis

Create JSON specification for Intelligent Logging and Analytics.

## Syntax

```powershell
Export-IlaJsonSpec [-workbook] <String> [-jsonFile] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Export-IlaJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation Workbook
to deploy the Intelligent Logging and Analytics for VMware Cloud Foundation validated solution:

- Validates that the Planning and Preparation is available
- Generates the JSON specification file using the Planning and Preparation workbook

## Examples

### Example 1

```powershell
Export-IlaJsonSpec -workbook .\pnp-workbook.xlsx -jsonFile .\ilaDeploySpec.json
```

This example creates a JSON specification Intelligent Logging and Analytics using the Planning and Preparation Workbook.

## Parameters

### -workbook

The Planning and Preparation Workbook (.xlsx) file.

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

The JSON (.json) file created.

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
