# Test-IPaddressArray

## Synopsis

Tests whether an array of strings can be converted to valid IPv4 addresses.

## Syntax

```powershell
Test-IPaddressArray [-IPaddressArray] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-IpAddressArray` cmdlet tests whether an array of strings can be converted to valid IPv4 addresses.
Returns $true if all strings are valid IPv4 address or $false when at least one is not valid IPv4 address.

## Examples

### Example 1

```powershell
Test-IpAddressArray -ipAddressArray @("192.168.20.10","172.16.31.1")
```

This example will test whether the strings "192.168.20.10","172.16.31.1" can be converted to valid IPv4 addresses.

### Example 2

```powershell
Test-IpAddressArray -ipAddressArray "192.168.20.10"
```

This example will test whether the string "192.168.20.10" can be converted to valid IPv4 addresses.

## Parameters

### -IPaddressArray

The array of strings to test.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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
