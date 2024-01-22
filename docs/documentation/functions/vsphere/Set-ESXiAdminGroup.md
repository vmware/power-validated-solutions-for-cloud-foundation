# Set-ESXiAdminGroup

## Synopsis

Configure Config.HostAgent.plugins.hostsvc.esxAdminsGroup on ESXi host

## Syntax

```powershell
Set-ESXiAdminGroup [-esxiHost] <String> [-groupName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-ESXiAdminGroup` cmdlet connects to specified ESXi Host and sets a new value for Config.HostAgent.plugins.hostsvc.esxAdminsGroup.

## Examples

### Example 1

```powershell
Set-ESXiAdminGroup -esxiHost sfo01-m01-esx01.sfo.rainpole.io -groupName ug-esxi-admins
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

### -groupName

The new group name.

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
