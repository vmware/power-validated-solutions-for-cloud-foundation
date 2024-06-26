# Test-VrslcmPrerequisite

## Synopsis

Verify the prerequisites for VMware Aria Suite Lifecycle.

## Syntax

```powershell
Test-VrslcmPrerequisite [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Test-VrslcmPrerequisite` cmdlet verifies the prerequisites for VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Test-VrslcmPrerequisite -jsonFile .\vrslcmDeploySpec.json
```

This example verifies the prerequisites for VMware Aria Suite Lifecycle.

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
