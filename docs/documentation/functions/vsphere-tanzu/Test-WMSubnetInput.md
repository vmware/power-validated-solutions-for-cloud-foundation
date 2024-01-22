# Test-WMSubnetInput

## Synopsis

Tests whether an IPv4 subnet is sized correctly for Developer Ready Infrastructure pools

## Syntax

```powershell
Test-WMSubnetInput [-Subnet] <String> [-SubnetType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-WMSubnetInput` cmdlet tests whether an IPv4 subnet is sized correctly for Developer Ready Infrastructure pools.

## Examples

### Example 1

```powershell
Test-WMSubnetInput -Subnet 192.168.21.0/24 -SubnetType Ingress
```

This example will return as 'true'.

## Parameters

### -Subnet

The IPv4 subnet to test.

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

### -SubnetType

The type of subnet to test.
One of the following: Pod, Service, Egress, Ingress.

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

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
