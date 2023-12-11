# Test-DnsServers

## Synopsis

Tests whether an array of DNS servers can resolve given domain name.

## Syntax

```powershell
Test-DnsServers [-dnsServers] <Array> [[-domainName] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Test-DnsServers` cmdlet tests whether an array of DNS servers can resolve given domain name.
Returns $true if all servers can resolve the given domain name or $false when at least one fails.

## Examples

### Example 1

```powershell
Test-DnsServers -dnsServers @("192.168.20.10","172.16.31.1") -domainName vmware.com
```

This example will test whether all dns servers "192.168.20.10","172.16.31.1" can can resolve domain name vmware.com.

### Example 2

```powershell
Test-DnsServers -dnsServers "192.168.20.10" -domainName vmware.com
```

This example will test whether dns server "192.168.20.10" can resolve domain name vmware.com.

## Parameters

### -dnsServers

The array of DNS servers to test.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -domainName

The domain name to resolve..

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: Vmware.com
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
