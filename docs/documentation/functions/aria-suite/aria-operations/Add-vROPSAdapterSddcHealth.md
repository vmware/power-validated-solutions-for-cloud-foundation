# Add-vROPSAdapterSddcHealth

## Synopsis

Adds an SDDC Health Adapters for Collectors

## Syntax

```powershell
Add-vROPSAdapterSddcHealth [-server] <String> [-user] <String> [-pass] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterSddcHealth` cmdlet adds SDDC Health Adapters for the Remove Collectors in VMware Aria
Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that SDDC Health Adapters do not exist in VMware Aria Operations
- Gathers the collector details from VMware Aria Operations
- Creates a new SDDC Health Adapter for each Collector in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapterSddcHealth -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example creates an SDDC Health Adapter for each Collector Node found in VMware Aria Operations.

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
