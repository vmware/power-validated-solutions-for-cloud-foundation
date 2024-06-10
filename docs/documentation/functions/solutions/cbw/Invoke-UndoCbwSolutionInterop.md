# Invoke-UndoCbwSolutionInterop

## Synopsis

Remove solution interoperability for Cloud-Based Workload Protection.

## Syntax

```powershell
Invoke-UndoCbwSolutionInterop [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoCbwSolutionInterop` cmdlet is a single function to remove the solution interoperability of the Cloud-Based Workload Protection for VMware Cloud Foundation validated solution for:

- Monitoring and Alerting

## Examples

### Example 1

```powershell
Invoke-UndoCbwSolutionInterop -jsonFile .\cbwDeploySpec.json
```

This example removes solution interoperability of the Cloud-Based Workload Protection for VMware Cloud Foundation using the JSON spec supplied

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
