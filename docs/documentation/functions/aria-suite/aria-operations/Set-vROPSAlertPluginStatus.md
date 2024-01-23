# Set-vROPSAlertPluginStatus

## Synopsis

Enable/Disable alert plugin

## Syntax

```powershell
Set-vROPSAlertPluginStatus [-pluginId] <String> [-status] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vROPSAlertPluginStatus` cmdlet Enables/Disables an existing alert plugin from VMware Aria Operations.

## Examples

### Example 1

```powershell
Set-vROPSAlertPluginStatus -pluginId <String> -status true
```

This example deletes the alert plugin with the plugin ID provide to VMware Aria Operations.

## Parameters

### -pluginId

The ID of the alert plugin to enable/disable.

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

### -status

The status of the alert plugin to enable/disable.

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
