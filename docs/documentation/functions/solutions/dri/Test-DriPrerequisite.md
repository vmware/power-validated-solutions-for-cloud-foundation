# Test-DriPrerequisite

## Synopsis

Verify the prerequisites for Developer Ready Infrastructure

## Syntax

``` PowerShell
Test-DriPrerequisite [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Test-DriPrerequisite` cmdlet verifies the prerequisites for Developer Ready Infrastructure for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` PowerShell
Test-DriPrerequisite -jsonFile .\dri DeploySpec.json
```

This example verifies the prerequisites for Developer Ready Infrastructure.

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
