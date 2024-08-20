# Get-NsxtIpPoolSubnet

## Synopsis

Retrieve IPs pools.

## Syntax

```powershell
Get-NsxtIpPoolSubnet [-ipPoolId] <String> [[-ipPoolSubnetId] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtIpPoolSubnet` cmdlet retrieves the IP pools from NSX Manager.

## Examples

### Example 1

```powershell
Get-NsxtIpPoolSubnet
```

This example retrieves all IP pools from NSX Manager.

### EXAMPLE 2

```powershell
Get-NsxtIpPoolSubnet -ipPoolId sfo-m01-r01-ip-pool-rtep
```

This example retrieves the IP subnets for the supplied IP Pool ID from NSX Manager.

### Example 3

```powershell
Get-NsxtIpPoolSubnet -ipPoolId sfo-m01-r01-ip-pool-rtep -ipPoolSubnetId sfo-m01-r01-ip-pool-rtep
```

This example retrieves details of the IP pool subnet based on the supplied ipPoolSubnetId for the supplied IP Pool ID from NSX Manager.

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
