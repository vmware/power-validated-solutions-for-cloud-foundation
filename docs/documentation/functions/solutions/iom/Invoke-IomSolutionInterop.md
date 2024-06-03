# Invoke-IomSolutionInterop

## Synopsis

Configure solution interoperability for Intelligent Operations Management.

## Syntax

```powershell
Invoke-IomSolutionInterop [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-IomSolutionInterop` cmdlet is a single function to configure the solution interoperability of the
Intelligent Operations Management for VMware Cloud Foundation validated solution for:

- Logging

## Examples

### Example 1

```powershel
Invoke-IomSolutionInterop -jsonFile .\iomDeploySpec.json
```

This example configures solution interoperability of the Intelligent Operations Management for VMware Cloud Foundation using the JSON spec supplied

## Parameters

### -jsonFile

The JSON (.json) file created.

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
