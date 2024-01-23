# Set-vROPSDnsConfig

## Synopsis

Configure DNS Server and/or DNS search domains on VMware Aria Operations appliance.

## Syntax

```powershell
Set-vROPSDnsConfig [-server] <String> [-user] <String> [-pass] <String> [-environmentName] <String>
 [[-dnsServers] <String>] [[-dnsSearchDomains] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vROPSDnsConfig` cmdlet configures the DNS server and search domain details of all VMware Aria Operations
analytics cluster appliances to the values passed as parameters.
The cmdlet connects to SDDC Manager
using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures all VMware Aria Operations analytics cluster appliance DNS configuration to the values
passed to the function using -dnsServers and -dnsSearchDomains.

## Examples

### Example 1

```powershell
Set-vROPSDnsConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -environmentName xint-env -dnsServers "172.16.11.4 172.16.11.5" -dnsSearchDomains rainpole.io
```

This example configures the VMware Aria Operations analytics cluster appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use 172.16.11.4 and 172.16.11.5 as its DNS servers and rainpole.io as its search domain.

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

### -environmentName

The name of the environment to configure DNS on.

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

### -dnsServers

The DNS servers to configure on the VMware Aria Operations analytics cluster appliances.

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

### -dnsSearchDomains

The DNS search domains to configure on the VMware Aria Operations analytics cluster appliances.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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
