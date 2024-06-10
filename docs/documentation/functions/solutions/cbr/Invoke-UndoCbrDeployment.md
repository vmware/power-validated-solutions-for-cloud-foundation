# Invoke-UndoCbrDeployment

## Synopsis

End-to-end removal of Cloud-Based Ransomware Recovery

## Syntax

``` powershell
Invoke-UndoCbrDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoCbrDeployment` cmdlet is a single function to removal the configuration of the Cloud-Based Ransomware Recovery for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-UndoCbrDeployment -jsonFile .\cbrDeploySpec.json
```

This example removes Cloud-Based Ransomware Recovery for VMware Cloud Foundation using the JSON spec supplied.

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
