# Remove-vRSLCMGroup

## Synopsis

Remove a group and its role assignments from VMware Aria Suite Lifecycle.

## Syntax

``` PowerShell
Remove-vRSLCMGroup [-vmid] <String> [<CommonParameters>]
```

## Description

The `Remove-vRSLCMGroup` cmdlet removes a group and its role assignments from VMware Aria Suite Lifecycle.

## Examples

### Example 1

``` PowerShell
Remove-vRSLCMGroup -vmid a3f18959-00b1-4703-a9ab-fad5de8efa84
```

This example removes a group and its role assignments from VMware Aria Suite Lifecycle.

## Parameters

### -vmid

The unique identifier of the group in VMware Aria Sute Lifecycle.

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
