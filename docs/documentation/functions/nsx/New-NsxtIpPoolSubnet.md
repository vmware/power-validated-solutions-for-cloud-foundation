# New-NsxtIpPoolSubnet

## Synopsis

Create an IP pool subnet.

## Syntax

```powershell
New-NsxtIpPoolSubnet [-ipPoolId] <String> [-ipPoolSubnetId] <String> [-startIpRange] <String> [-endIpRange] <String> [-cidr] <String> [-gateway] <String> [<CommonParameters>]
```

## Description

The `New-NsxtIpPoolSubnet` cmdlet creates an IP pool subnet in NSX Manager.

## Examples

### Example 1

```powershell
New-NsxtIpPoolSubnet -ipPoolId sfo-m01-r01-ip-pool-rtep -ipPoolSubnetId sfo-m01-r01-ip-pool-rtep -startIpRange 10.11.20.101 -endIpRange 10.11.20.116 -cidr 10.11.20.0/24 -gateway 10.11.20.1
```

This example creates an IP pool subnet for the given ipPoolId.

## Parameters

### -ipPoolId

The name of the IP Pool.

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

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -startIpRange

The IP Address for the start of the IP pool range.

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

### -endIpRange

The IP Address for the end of the IP pool range.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -cidr

The CIDR for the IP pool subnet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -gateway

The gateway IP for the IP pool subnet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
