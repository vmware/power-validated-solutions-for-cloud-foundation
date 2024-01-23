# Update-vROPSAdapterCollecterGroup

## Synopsis

Updates the assigned Collector Group for the specified Adapter type

## Syntax

```powershell
Update-vROPSAdapterCollecterGroup [-server] <String> [-user] <String> [-pass] <String>
 [[-collectorGroupName] <String>] [-adapterType] <String> [[-adapterName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vROPSAdapterCollecterGroup` cmdlet updates the assigned Collector group for all Adapters in
VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates the collector Group exits in VMware Aria Operations
- Gathers the unique ID of the collector group
- Gathers the given Adapter details from VMware Aria Operations
- Updates the assigned Collector group for the Adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Update-vROPSAdapterCollecterGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName "sfo-remote-collectors" -adaptertype "LogInsightAdapter"
```

This example updates VMware Aria Operations for LogsAdapter to use the collector group named 'sfo-remote-collectors'

### Example 2

```powershell
Update-vROPSAdapterCollecterGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName "sfo-remote-collectors" -adaptertype "VMWARE"
```

This example updates all vCenter Adapters to use the collector group named 'sfo-remote-collectors'

### Example 3

```powershell
Update-vROPSAdapterCollecterGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName "sfo-remote-collectors" -adaptertype "IdentityManagerAdapter" -adaptername "sfo-wsa01"
```

This example updates Identity Manager Adapter with name "sfo-wsa01" to use the collector group named 'sfo-remote-collectors'

### Example 4

```powershell
Update-vROPSAdapterCollecterGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -adaptertype "IdentityManagerAdapter" -adaptername "vRSLCM_VCF_Workspace ONE Access Adapter"
```

This example updates Identity Manager Adapter with name "vRSLCM_VCF_Workspace ONE Access Adapter" to use the default Collector group named "Default collector group".

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

The name of the Collector Group to assign to the Adapter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: Default collector group
Accept pipeline input: False
Accept wildcard characters: False
```

### -adapterType

The type of Adapter to update.

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

### -adapterName

The name of the Adapter to update.

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
