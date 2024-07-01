# Request-AriaNetworksInternalApiToken

## Synopsis

Connects to the specified VMware Aria Operations for Networks platform node internal API and obtains an authorization token.

## Syntax

```powershell
Request-AriaNetworksInternalApiToken [-fqdn] <String> [[-username] <String>] [[-password] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

The `Request-AriaNetworksInternalApiToken` cmdlet connects to the specified VMware Aria Operations for Networks platform node internal API and obtains an authorization token.
It is required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-AriaNetworksInternalApiToken -fqdn xint-net01a.rainpole.io -username admin@local -password VMw@re1!
```

This example shows how to connect to the internal API.

## Parameters

### -fqdn

The fully qualified domain name of the VMware Aria Operations for Networks platform node which hosts the internal API.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
