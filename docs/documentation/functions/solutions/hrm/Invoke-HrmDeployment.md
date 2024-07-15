# Invoke-HrmDeployment

## Synopsis

End-to-end deployment of Health Reporting and Monitoring.



## Syntax

``` powershell
Invoke-HrmDeployment [-jsonFile] <String> [-certificates] <String> [-binaries] <String> [<CommonParameters>]
```

## Description

The `Invoke-HrmDeployment` cmdlet is a single function to implement the configuration of the Health Reporting and Monitoring for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-HrmDeployment -jsonFile .\hrmDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures Health Reporting and Monitoring for VMware Cloud Foundation using the JSON spec supplied.

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

### -certificates

The folder containing the certificates.

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

### -binaries

The folder containing the OVAs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
