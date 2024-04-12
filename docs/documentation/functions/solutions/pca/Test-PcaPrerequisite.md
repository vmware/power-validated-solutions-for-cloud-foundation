# Test-PcaPrerequisite

## Synopsis

Verify the prerequisites for Private Cloud Automation

## Syntax

``` PowerShell
Test-PcaPrerequisite [-jsonFile] <String> [-binaries] <String> [<CommonParameters>]
```

## Descriptiopn

The `Test-PcaPrerequisite` cmdlet verifies the prerequisites for Private Cloud Automation for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` PowerShell
Test-PcaPrerequisite -jsonFile .\pcaDeploySpec.json -binaries .\binaries
```

This example verifies the prerequisites for Private Cloud Automation.

## Parameters

### -jsonFile

The path to the JSON specification file.

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

### -binaries

The path to the binaries folder.

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
