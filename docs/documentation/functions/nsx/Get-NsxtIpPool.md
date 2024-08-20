# Get-NsxtIpPool

## Synopsis

Retrieve IPs pools.

## Syntax

```powershell
Get-NsxtIpPool [[-id] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtIpPool` cmdlet retrieves the IP pools from NSX Manager.

## Examples

### Example 1

```powershell
Get-NsxtIpPool
```

This example retrieves the IP pools from NSX Manager.

### Example 2

```powershell
Get-NsxtIpPool -id sfo-m01-r01-ip-pool-rtep
```

This example retrieves the IP pools with the supplied ID from NSX Manager.

## Parameters

### -id

The ID of the IP Pool.

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
