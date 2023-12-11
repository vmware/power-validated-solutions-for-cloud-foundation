# Remove-vRLIAlert

## Synopsis

Delete an alerts

## Syntax

```powershell
Remove-vRLIAlert [-alertId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRLIGroup` cmdlet deletes an alerts.

## Examples

### Example 1

```powershell
Get-vRLIGroup -alertId <alert_id>
```

This example deletes an alert from VMware Aria Operations for Logs.

## Parameters

### -alertId

The ID of the alert to delete.

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
