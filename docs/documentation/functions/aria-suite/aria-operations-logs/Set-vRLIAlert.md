# Set-vRLIAlert

## Synopsis

Enable/Disable an alert

## Syntax

```powershell
Set-vRLIAlert [-id] <String> [-enabled] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLIAlert` cmdlet enables or disables an alert in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLIAlert -id 0111952f-9aec-3872-b108-d70ec8a2981a -enabled true
```

This example enables the alert in VMware Aria Operations for Logs based on id provided.

## Parameters

### -id

The ID of the alert to enable/disable.

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

### -enabled

Enable or disable the alert. Valid values are true or false.

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
