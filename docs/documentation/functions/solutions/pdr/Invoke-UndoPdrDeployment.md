# Invoke-UndoPdrDeployment

## Synopsis

End-to-end removal of Site Protection and Disaster Recovery.

## Syntax

``` powershell
Invoke-UndoPdrDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoPdrDeployment` cmdlet is a single function to remove the configuration of the Site Protection and Disaster Recovery for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-UndoPdrDeployment -jsonFile .\pdrDeploySpec.json
```

This example removes the configuration of Site Protection and Disaster Recovery for VMware Cloud Foundation using JSON spec supplied.

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
