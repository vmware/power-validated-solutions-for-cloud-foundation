# Invoke-UndoInvDeployment

## Synopsis

End-to-end removal of Intelligent Network Visibility.

## Syntax

```powershell
Invoke-UndoInvDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-UndoInvDeployment` cmdlet is a single function to remove the configuration of the Intelligent Network Visibility for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-UndoInvDeployment -jsonFile .\invDeploySpec.json
```

This example removes the configuration of Intelligent Network Visibility for VMware Cloud Foundation using the JSON spec supplied.

## Parameters

### -jsonFile

The JSON specification file for the Intelligent Network Visibility for VMware Cloud Foundation validated solution.

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
