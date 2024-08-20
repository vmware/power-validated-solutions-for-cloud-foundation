# Undo-NsxtRemoteTunnelEndpoint

## Synopsis
Remove the Remote Tunnel Endpoint configuration for NSX Federation.


## Syntax

```powershell
Undo-NsxtRemoteTunnelEndpoint [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-ipPoolName] <String> [-mtu] <String> [<CommonParameters>]
```

## Description

The `Undo-NsxtRemoteTunnelEndpoint` cmdlet removes the Remote Tunnel Endpoint configuration for NSX Federation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to the NSX Local Manager
- Removes the IP Pool for the Remote Tunnel Endpoint

## Examples

### Example 1

```powershell
Undo-NsxtRemoteTunnelEndpoint -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -ipPoolName sfo-m01-r01-ip-pool-rtep -mtu 1700
```

This example removes the IP pool for the Remote Tunnel Endpoint and sets the global configuration for the MTU.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

The username to authenticate to the SDDC Manager.

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

The password to authenticate to the SDDC Manager.

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

### -sddcDomain

The name of the workload domain to remove the Remote Tunnel Endpoint.

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

### -ipPoolName

The name of the IP pool for the Remote Tunnel Endpoint.

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

### -mtu

The MTU to set for the global configuration for Remote Tunnel Endpoint.

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
