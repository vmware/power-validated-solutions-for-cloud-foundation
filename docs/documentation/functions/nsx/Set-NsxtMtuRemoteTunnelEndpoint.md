# Set-NsxtMtuRemoteTunnelEndpoint

## Synopsis

Set the MTU for the Remote Tunnel Endpoint

## Syntax

```powershell
Set-NsxtMtuRemoteTunnelEndpoint [-mtu] <String> [<CommonParameters>]
```

## Description

The `Set-NsxtMtuRemoteTunnelEndpoint` cmdlet configures the MTU for the Remote Tunnel Endpoint.

## Examples

### Example 1

```powershell
Set-NsxtMtuRemoteTunnelEndpoint -mtu 9000
```

This example configures the MTU for the Remote Tunnel Endpoint.

## Parameters

### -mtu

The MTU size for the Remote Tunnel Endpoint

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
