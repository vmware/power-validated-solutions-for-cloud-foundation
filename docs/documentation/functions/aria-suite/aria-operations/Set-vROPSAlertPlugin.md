# Set-vROPSAlertPlugin

## Synopsis

Updates an alert plugin

## Syntax

```powershell
Set-vROPSAlertPlugin [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vROPSAlertPlugin` cmdlet updates an existing alert plugin in VMware Aria Operations.

## Examples

### Example 1

```powershell
Set-vROPSAlertPlugin -json .\alertPluginUpdate.json
```

This example updates the configuration of an existing alert plugin based on the JSON provide to VMware Aria Operations.

## Parameters

### -json

The JSON file containing the alert plugin configuration.

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
