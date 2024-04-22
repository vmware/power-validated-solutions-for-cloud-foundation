# Test-PdrPrerequisite

## Synopsis

Verify the prerequisites for Site Protection and Disaster Recovery

## Syntax

```powershell
Test-PdrPrerequisite [-jsonFile] <String> [-binaries] <String> [<CommonParameters>]
```

## Description

The `Test-PdrPrerequisite` cmdlet verifies the prerequisites for Site Protection and Disaster Recovery for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Test-PdrPrerequisite -jsonFile .\pdrDeploySpec.json -binaries .\binaries
```

This example verifies the prerequisites for Site Protection and Disaster Recovery.

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
