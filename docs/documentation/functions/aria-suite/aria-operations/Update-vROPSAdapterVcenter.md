# Update-vROPSAdapterVcenter

## Synopsis

Updates the assigned collector group for vCenter Adapter

## Syntax

```powershell
Update-vROPSAdapterVcenter [-server] <String> [-user] <String> [-pass] <String> [-collectorGroupName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vROPSAdapterVcenter` cmdlet updates the assigned collector group for all vCenter Adapters in
VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the collector group exits in VMware Aria Operations
- Gathers the unique ID of the collector group
- Gathers the vCenter Adapter details from VMware Aria Operations
- Updates the assigned collector group for the vCenter Adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Update-vROPSAdapterVcenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName "sfo-remote-collectors"
```

This example updates all vCenter Adapters to use the collector group named 'sfo-remote-collectors'.

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

### -collectorGroupName

The name of the Collector Group to assign to the vCenter Adapter.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
