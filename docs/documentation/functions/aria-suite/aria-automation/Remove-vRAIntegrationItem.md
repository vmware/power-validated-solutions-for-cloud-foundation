# Remove-vRAIntegrationItem

## Synopsis

Remove an Integration Item from VMware Aria Automation

## Syntax

```powershell
Remove-vRAIntegrationItem [-integrationType] <String> [[-integrationId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAIntegrationItem` cmdlet removes the given Integration Item from VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAIntegrationItem -integrationType vrops -integrationId "instacenID" 
```

This example removes VMware Aria Operations integration from VMware Aria Automation.

## Parameters

### -integrationType

The type of integration to be removed.
Valid values are vrops.

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

### -integrationId

The ID of the integration to be removed.

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
