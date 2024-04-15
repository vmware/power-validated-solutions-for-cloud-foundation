# Test-CcmPrerequisite

## Synopsis
Verify the prerequisites for Cross Cloud Mobility

## Syntax

``` PowerShell
Test-CcmPrerequisite [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Test-CcmPrerequisite` cmdlet verifies the prerequisites for Cross Cloud Mobility for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` PowerShell
Test-CcmPrerequisite -jsonFile .\cbwDeploySpec.json
```

This example verifies the prerequisites for Cross Cloud Mobility.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
