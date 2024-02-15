# Invoke-CbwDeployment

## Synopsis

End-to-end deployment of Cloud-Based Workload Protection.

## Syntax

``` powershell
Invoke-CbwDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-CbwDeployment` cmdlet is a single function to implement the configuration of the Cloud-Based Workload
Protection for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-CbwDeployment -jsonFile .\cbwDeploySpec.json
```

This example configures Cloud-Based Workload Protection for VMware Cloud Foundation using the JSON spec supplied.

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
