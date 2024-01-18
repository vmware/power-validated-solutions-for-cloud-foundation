# Test-vROPsAdapterStatusByType

## Synopsis

Validates the integration status of VMware Aria Operations Adapters.

## Syntax

```powershell
Test-vROPsAdapterStatusByType [-server] <String> [-user] <String> [-pass] <String> [-adapterKind] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vROPsAdapterStatusByType` cmdlet tests the integration status between VMware Aria Operations and
configured adapter.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates the integration status between VMware Aria Operations and configured adapter.

## Examples

### Example 1

```powershell
Test-vROPsAdapterStatusByType -server sfo-vcf01.sfo.rainpole.io "administrator@vsphere.local" -pass "VMw@re1!" -adapterKind NSXTAdapter
```

This example validates the integration status between VMware Aria Operations and the NSX adapter.

### Example 2

```powershell
Test-vROPsAdapterStatusByType -server sfo-vcf01.sfo.rainpole.io "administrator@vsphere.local" -pass "VMw@re1!" -adapterKind CASAdapter
```

This example validates the integration status between VMware Aria Operations and VMware Aria Automation adapter.

## Parameters

### -server

The SDDC Manager FQDN or IP Address.

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

The SDDC Manager password.

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

### -adapterKind

The adapter kind.

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
