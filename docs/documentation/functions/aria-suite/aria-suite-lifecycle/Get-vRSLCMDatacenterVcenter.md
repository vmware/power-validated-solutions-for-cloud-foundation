# Get-vRSLCMDatacenterVcenter

## Synopsis

Get list of vCenter Servers in VMware Aria Suite Lifecycle

## Syntax

```powershell
Get-vRSLCMDatacenterVcenter [-datacenterVmid] <String> [[-vcenterName] <String>] [-environments] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMDatacenterVcenter` cmdlet gets a paginated list of vCenter Servers in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMDatacenterVcenter [-datacenterVmid] <String> 
```

This example gets all vCenter Servers for a Datacenter

### Example 2

```powershell
Get-vRSLCMDatacenterVcenter [-datacenterVmid] <String> -vcenterName sfo-m01-vc01
```

This example gets a named vCenter Server for a datacenter

### Example 3

```powershell
Get-vRSLCMDatacenterVcenter [-datacenterVmid] <String> -vcenterName sfo-m01-vc01 -environments
```

This example gets all vCenter Servers for a Datacenter that is assigned to an Environemnt.

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

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -environments

Switch to get all vCenter Servers for a Datacenter that is assigned to an Environemnt.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
