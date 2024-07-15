# Set-WorkspaceOneDnsConfig

## Synopsis

Sets the DNS server and/or DNS search domains for all Workspace ONE Access appliances

## Syntax

```powershell
Set-WorkspaceOneDnsConfig [-server] <String> [-user] <String> [-pass] <String> [[-dnsServers] <String>] [[-dnsSearchDomains] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WorkspaceOneDnsConfig` cmdlet configures the DNS server and search domain details of all Workspace ONE Access appliances to the values stored in SDDC Manager.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures the DNS configuration for all Workspace ONE Access appliances.

## Examples

### Example 1

```powershell
Set-WorkspaceOneDnsConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -dnsServers "172.16.11.4 172.16.11.5" -dnsSearchDomains "rainpole.io sfo.rainpole.io lax.rainpole.io"
```

This example configures all Workspace ONE Access appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use 172.16.11.4 amd 172.16.11.5 as its DNS servers and rainpole.io, sfo.rainpole.io, and lax.rainpole.io as its DNS search domains.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

### -dnsServers

The DNS servers to configure on all Workspace ONE Access appliances.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dnsSearchDomains

The DNS search domains to configure on all Workspace ONE Access appliances.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
