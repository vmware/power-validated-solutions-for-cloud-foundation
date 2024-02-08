# Invoke-DriDeployment

## Synopsis

End-to-end Deployment of Developer Ready Infrastructure.

## Syntax

``` powershell
Invoke-DriDeployment [-jsonFile] <String> [-certificates] <String> [-kubectlPath] <String> [<CommonParameters>]
```

## Description

The `Invoke-DriDeployment` cmdlet is a single function to implement the configuration of the Developer Ready
Infrastructure for VMware Cloud Foundation validated solution.

## Examples

### Example 1

``` powershell
Invoke-DriDeployment -jsonFile .\driDeploySpec.json -certificates ".\certificates\" -kubectlPath "C:\Kubectl\bin\"
```

This example configures Developer Ready Infrastructure for VMware Cloud Foundation using the JSON spec supplied.

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

### -kubectlPath

The path to the bin folder of kubectl.

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
