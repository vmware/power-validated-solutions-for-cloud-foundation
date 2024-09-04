# Test-NsxFederationPrerequisite

## Synopsis

Verify the prerequisites for NSX Federation.

## Syntax

```powershell
Test-NsxFederationPrerequisite [-jsonFile] <String> [-binaries] <String> [<CommonParameters>]
```

## Description

The `Test-NsxFederationPrerequisite` cmdlet verifies the prerequisites for NSX Federation for VMware Cloud Foundation.

## Examples

### Example 1

```powershell
Test-NsxFederationPrerequisite -jsonFile .\nsxFederationDeploySpec.json -binaries .\binaries
```

This example verifies the prerequisites for NSX Federation.

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
