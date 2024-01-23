# Set-SrmNetworkDns

## Synopsis

Set DNS configuration

## Syntax

```powershell
Set-SrmNetworkDns [-srmHostname] <String> [-dnsServers] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmNetworkDns` cmdlet change the DNS configuration of a Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Set-SrmNetworkDns -srmHostname sfo-m01-srm01.sfo.rainpole.io -dnsServers "172.18.95.4","172.18.95.5"
```

This example retrieves information about the DNS configuration of the Site Recovery Manager appliance.

## Parameters

### -srmHostname

The srmHostname parameter The hostname of the Site Recovery Manager appliance.

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

### -dnsServers

The dnsServers parameter The DNS servers to configure.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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
