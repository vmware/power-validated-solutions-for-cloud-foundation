# Request-AriaNetworksToken

## Synopsis

Connects to VMware Aria Operations for Networks and obtains an authorization token.

## Syntax

```powershell
Request-AriaNetworksToken [-fqdn] <String> [[-username] <String>] [[-password] <String>] [<CommonParameters>]
```

## Description

The `Request-AriaNetworksToken` cmdlet connects to the specified VMware Aria
Operations for Networks instance and obtains an authorization token. It is
required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-AriaNetworksToken -fqdn xint-net01a.rainpole.io -username admin@local -password VMw@re1!
```

This example shows how to connect to the VMware Aria Operations for Networks appliance.

## Parameters

### -fqdn

The fully qualified domain name of the VMware Aria Operations for Networks appliance.

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

### -username

The username to use for authentication.

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

### -password

The password to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
