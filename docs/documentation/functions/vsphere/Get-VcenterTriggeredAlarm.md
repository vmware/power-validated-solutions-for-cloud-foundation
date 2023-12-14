# Get-VcenterTriggeredAlarm

## Synopsis

Returns the triggered alarms for a vCenter Server instance.

## Syntax

```powershell
Get-VcenterTriggeredAlarm [-server] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VcenterTriggeredAlarm` cmdlet returns all triggered alarms from vCenter Server instance.

## Examples

### Example 1

```powershell
Get-VcenterTriggeredAlarm -server sfo-w01-vc01.sfo.rainpole.io
```

This example returns all triggered alarms for a vCenter Server instance named sfo-w01-vc01.sfo.rainpole.io.

## Parameters

### -server

The vCenter Server name.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
