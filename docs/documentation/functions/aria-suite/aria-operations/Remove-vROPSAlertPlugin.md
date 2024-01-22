# Remove-vROPSAlertPlugin

## Synopsis

Delete an alert plugin

## Syntax

```powershell
Remove-vROPSAlertPlugin [-pluginId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vROPSAlertPlugin` cmdlet deletes an existing alert plugin from VMware Aria Operations.

## Examples

### Example 1

```powershell
Remove-vROPSAlertPlugin [-pluginId] <String>
```

This example deletes the alert plugin with the plugin ID provide to VMware Aria Operations.

## Parameters

### -pluginId

The ID of the alert plugin to delete.

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
