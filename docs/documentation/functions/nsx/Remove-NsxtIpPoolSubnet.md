# Remove-NsxtIpPoolSubnet

## Synopsis

Delete an IP pool.

## Syntax

```powershell
Remove-NsxtIpPoolSubnet [-ipPoolId] <String> [[-ipPoolSubnetId] <String>] [<CommonParameters>]
```

## Description

The `Remove-NsxtIpPoolSubnet` cmdlet deletes the IP pool from NSX Manager.

## Examples

### Example 1

```powershel
Remove-NsxtIpPoolSubnet -ipPoolId sfo-m01-r01-ip-pool-rtep -ipPoolSubnetId  sfo-m01-r01-ip-pool-rtep
```

This example deletes the IP subnet pool with the supplied IDs from NSX Manager.

## Parameters

### -ipPoolId

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

### -ipPoolSubnetId

The ID of the IP subnet Pool.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
