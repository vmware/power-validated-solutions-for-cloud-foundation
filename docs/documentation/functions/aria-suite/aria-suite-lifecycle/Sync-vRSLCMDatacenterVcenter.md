# Sync-vRSLCMDatacenterVcenter

## Synopsis

Trigger a vCenter Server inventory sync in VMware Aria Suite Lifecycle.

## Syntax

```powershell
Sync-vRSLCMDatacenterVcenter [-datacenterVmid] <String> [-vcenterName] <String> [<CommonParameters>]
```

## Description

The `Sync-vRSLCMDatacenterVcenter` cmdlet triggers a vCenter Server inventory sync VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
Sync-vRSLCMDatacenterVcenter -datacenterVmid <datacenter_vmid> -vcenterName <vcenter_name>
```

This example triggers a vCenter Server inventory sync.

## Parameters

### -datacenterVmid

The vmid of the datacenter.

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

### -vcenterName

The name of the vCenter Server.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
