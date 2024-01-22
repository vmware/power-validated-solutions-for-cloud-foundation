# Get-ESXiAdminGroup

## Synopsis

Retrieves Config.HostAgent.plugins.hostsvc.esxAdminsGroup on ESXi host

## Syntax

```powershell
Get-ESXiAdminGroup [-esxiHost] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

`Get-ESXiAdminGroup` cmdlet Connects to specified ESXi Host and retrieves the setting for Config.HostAgent.plugins.hostsvc.esxAdminsGroup.

## Examples

### Example 1

```powershell
Get-ESXiAdminGroup -esxiHost sfo01-m01-esx01.sfo.rainpole.io
```

## Parameters

### -esxiHost

The ESXi host name.

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
