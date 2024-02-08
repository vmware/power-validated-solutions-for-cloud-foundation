# Invoke-UndoHrmDeployment

## Synopsis

End-to-end removal of Health Reporting and Monitoring.

## Syntax

``` powershell
Invoke-UndoHrmDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoHrmDeployment` cmdlet is a single function to remove the configuration of the Health Reporting
and Monitoring for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-UndoHrmDeployment -jsonFile .\hrmDeploySpec.json
```

This example removes the configuration of Health Reporting and Monitoring for VMware Cloud Foundation using JSON spec supplied.

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
