# Set-vRADnsConfig

## Synopsis

Configure DNS Server and/or DNS search domains on VMware Aria Automation appliances

## Syntax

```powershell
Set-vRADnsConfig [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String> [-vraPass] <String> [-environmentName] <String> [[-dnsServers] <String>] [[-dnsSearchDomains] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRADnsConfig` cmdlet configures the DNS server and search domain details of all VMware Aria Automation appliances to the values passed as parameters.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures all VMware Aria Automation appliance DNS configuration to the values passed to the function using
-dnsServers and -dnsSearchDomains.

## Examples

### Example 1

```powershell
Set-vRADnsConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vraUser configadmin -vraPass VMw@re1! -environmentName xint-env -dnsServers "172.16.11.4 172.17.11.4" -dnsSearchDomains rainpole.io
```

This example configures the VMware Aria Automation appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use 172.16.11.4 and 172.17.11.4 as its DNS servers and rainpole.io as its search domain.

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

### -vraUser

The VMware Aria Automation user to connect with.

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

### -vraPass

The VMware Aria Automation password to connect with.

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

### -environmentName

The VMware Aria Suite Lifecycle environment name.

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

### -dnsServers

The DNS server(s) to configure the VMware Aria Automation appliances to use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dnsSearchDomains

The DNS search domain(s) to configure the VMware Aria Automation appliances to use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
