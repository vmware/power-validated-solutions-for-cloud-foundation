# Invoke-PcaSolutionInterop

## Synopsis

Configure solution interoperability for Private Cloud Automation.

## Syntax

```powershell
Invoke-PcaSolutionInterop [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-PcaSolutionInterop` cmdlet is a single function to configure the solution interoperability of the Private Cloud Automation for VMware Cloud Foundation validated solution for:

- Monitoring and Alerting
- Logging

## Examples

### Example 1

```powershell
Invoke-PcaSolutionInterop -jsonFile .\pcaDeploySpec.json
```

This example configures solution interoperability of the Private Cloud Automation for VMware Cloud Foundation using the JSON spec supplied

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
