# Remove-NsxtGroup

## Synopsis

Remove a group

## Syntax

```powershell
Remove-NsxtGroup [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-NsxtGroup` cmdlet removes a group.

## Examples

### Example 1

```powershell
Remove-NsxtGroup -id <String>
```

This example removes the specified security policy.

## Parameters

### -id

The id of the group.

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
