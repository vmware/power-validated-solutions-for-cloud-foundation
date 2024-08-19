# Test-PrereqDnsEntries

## Synopsis

Checks the DNS resolution of a DNS entry or entries on a DNS server or servers.

## Syntax

```powershell
Test-PrereqDnsEntries [-dnsEntries] <String[]> [-dnsServers] <String[]> [<CommonParameters>]
```

## Description

The `Test-PrereqDnsEntries` cmdlet checks for the resolution of a DNS record or multiple DNS records and tests the forward and reverse lookups in a DNS server or multiple DNS servers.

## Examples

### Example 1

```powershell
Test-PrereqDnsEntries -dnsEntries sfo-vcf01.sfo.rainpole.io, 192.168.11.41 -dnsServers rpl-ad01.rainpole.io
This example will validate the forward and reverse details of the two DNS entries and if one exists in the DNS Server it will return the corresponding value.
```

## Parameters

### -dnsEntries

The fully qualified domain name (FQDN) or IP address of the DNS entry or entries to check, separated by commas if checking more than one.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -dnsServers

The fully qualified domain name (FQDN) or IP address of the DNS server or servers to check for the DNS entry or entries in separated by commas if checking more than one.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`,
`-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

