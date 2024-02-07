# Invoke-UndoDriDeployment

## Synopsis

End-to-end removal of Developer Ready Infrastructure.

## Syntax

``` powershell
Invoke-UndoDriDeployment [-jsonFile] <String> [-kubectlPath] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoDriDeployment` cmdlet is a single function to remove the configuration of the Developer Ready
Infrastructure for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-UndoDriDeployment -jsonFile .\driDeploySpec.json -kubectlPath "C:\Kubectl\bin\"
```

This example removes the configuration of Developer Ready Infrastructure for VMware Cloud Foundation using JSON spec supplied.

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

### -kubectlPath

The path to the bin folder of kubectl.

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
