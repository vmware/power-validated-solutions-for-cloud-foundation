# Test-GlobalWsaPrerequisite

## SYNOPSIS

Verify the prerequisites for Global Workspace ONE Access.

## Syntax

```powershell
Test-GlobalWsaPrerequisite [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Test-GlobalWsaPrerequisite` cmdlet verifies the prerequisites for Global Workspace ONE Access.

## Examples

### Example 1

```pwoershell
Test-GlobalWsaPrerequisite -jsonFile .\wsaDeploySpec.json
```

This example verifies the prerequisites for Global Workspace ONE Access.

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
