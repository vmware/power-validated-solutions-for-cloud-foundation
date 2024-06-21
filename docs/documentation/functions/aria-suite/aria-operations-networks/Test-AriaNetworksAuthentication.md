# Test-AriaNetworksAuthentication

## Synopsis

Check authentication to a VMware Aria Operations for Networks instance.

## Syntax

```powershell
Test-AriaNetworksAuthentication [-server] <String> [-user] <String> [-pass] <String> [<CommonParameters>]
```

## Description

The `Test-AriaNetworksAuthentication` cmdlet checks authentication to a VMware Aria Operations for Networks instance.

## Examples

### Example 1

```powershell
Test-AriaNetworksAuthentication -server xint-net01a.rainpole.io -user admin@local -pass VMw@re1!
```

This example checks authentication with a VMware Aria Operations for Networks instance.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the VMware Aria Operations for Networks instance.

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

### -user

The username to authenticate to the VMware Aria Operations for Networks instance.

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

### -pass

The password to authenticate to the VMware Aria Operations for Networks instance.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
