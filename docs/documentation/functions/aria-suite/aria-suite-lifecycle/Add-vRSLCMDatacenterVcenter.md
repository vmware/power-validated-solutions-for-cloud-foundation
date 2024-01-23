# Add-vRSLCMDatacenterVcenter

## Synopsis

Add a vCenter Server to a Datacenter in VMware Aria Suite Lifecycle

## Syntax

```powershell
Add-vRSLCMDatacenterVcenter [-datacenterVmid] <String> [-vcenterFqdn] <String> [-userLockerAlias] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMDatacenterVcenter` cmdlet adds a vCenter Servers to a Datacenter in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Add-vRSLCMDatacenterVcenter -datecenterVmid <string> -vcenterFqdn <vcenter_fqdn> -userLockerAlias <user_alias>
```

This example adds a vCenter Server to a Datacenter.

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

### -vcenterFqdn

The fully qualified domain name of the vCenter Server.

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

### -userLockerAlias

The alias of the user in the locker.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
