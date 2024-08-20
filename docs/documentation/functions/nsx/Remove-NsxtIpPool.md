# Remove-NsxtIpPool

## Synopsis

Delete an IP pool.

## Syntax

```powershell
Remove-NsxtIpPool [-id] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtIpPool` cmdlet deletes the IP pool from NSX Manager.

## Examples

### Example 1

```powershell
Remove-NsxtIpPool -id sfo-m01-r01-ip-pool-rtep
```

This example deletes the IP pool with the supplied ID from NSX Manager.

## Parameters

### -id

The ID of the IP Pool.

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
