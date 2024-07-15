# Get-vRSLCMGroup

## Synopsis

Retrieve group assignments in VMware Aria Suite Lifecycle.

## Syntax

``` PowerShell
Get-vRSLCMGroup [[-providerVmid] <String>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMGroup` cmdlet retrieves a list of group assignments in VMware Aria Suite Lifecycle.

## Examples

### Example 1

``` PowerShell
Get-vRSLCMGroup
```

This example retrieves a list of VMware Aria Suite Lifecycle group assignments.

### Example 2

``` PowerShell
Get-vRSLCMGroup -providerVmid 2d90903c-b753-4f52-905e-5421d11f6572
```

This example retrieves a list of VMware Aria Suite Lifecycle group assignments for the given identity provider.

## Parameters

### -providerVmid

The vmid for the provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
