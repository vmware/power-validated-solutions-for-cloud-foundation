# Test-IpAddress

## Synopsis

Tests whether an IPv4 address is in a specified subnet.

## Syntax

```powershell
Test-IpAddress [-ipAddress] <String> [-Subnet] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-IpAddress` cmdlet tests whether an IPv4 address is in a specified subnet.

## Examples

### Example 1

```powershell
Test-IpAddress -ipAddress 192.168.20.10 -Subnet 192.168.20.0/24
```

This example will test whether the IPv4 address 192.168.20.10 is in the 192.168.20.0/24 subnet.

## Parameters

### -ipAddress

The IPv4 address to test.

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

### -Subnet

The IPv4 subnet to test against.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
