# Invoke-VrslcmUndoDeployment

## Synopsis

Remove VMware Aria Suite Lifecycle.

## Syntax

```powershell
Invoke-VrslcmUndoDeployment [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Invoke-VrslcmUndoDeployment` cmdlet is a single function to remove VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Invoke-VrslcmUndoDeployment -jsonFile .\vrslcmDeploySpec.json
```

This example removes VMware Aria Suite Lifecycle.

## Parameters

### -jsonFile

The path to the JSON specification file to be used.

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
