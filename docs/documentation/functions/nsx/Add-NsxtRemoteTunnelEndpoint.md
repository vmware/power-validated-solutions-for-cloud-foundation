# Add-NsxtRemoteTunnelEndpoint

## Synopsis

Configures the Remote Tunnel Endpoint for NSX Federation.

## Syntax

```powershell
Add-NsxtRemoteTunnelEndpoint [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-ipPoolName] <String> [-startIpRange] <String> [-endIpRange] <String> [-cidr] <String> [-gateway] <String> [-mtu] <String> [<CommonParameters>]
```

## Description

The `Add-NsxtRemoteTunnelEndpoint` cmdlet configures the Remote Tunnel Endpoint for NSX Federation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to the NSX Local Manager
- Creates an IP Pool for the Remote Tunnel Endpoint

## Examples

### Example 1

```powershell
Add-NsxtRemoteTunnelEndpoint -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -ipPoolName sfo-m01-r01-ip-pool-rtep -startIpRange 10.11.20.101 -endIpRange 10.11.20.116 -cidr 10.11.20.0/24 -gateway 10.11.20.1 -mtu 9000
```

This example creates a IP pool for the Remote Tunnel Endpoint and sets the global configuration for the MTU.

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

The name of the workload domain to configure the Remote Tunnel Endpoint.

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

### -startIpRange

The start IP address for the IP pool range.

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

### -endIpRange

The end IP address for the IP pool range.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -cidr

The CIDR for the IP pool range.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -gateway

The gateway for the IP pool range.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
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
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
