# Remove-vRLIAgentGroup

## Synopsis

Remove an agent group

## Syntax

```powershell
Remove-vRLIAgentGroup [-groupName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRLIAgentGroup` cmdlet deletes an agent group.

## Examples

### Example 1

```powershell
Remove-vRLIAgentGroup -groupName "Workspace ONE Access (IAM) - Appliance Agent Group"
```

This example deletes an agent group.

## Parameters

### -groupName

The name of the agent group to delete.

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
