# Set-WSARoleMember

## Synopsis

Set WSA Role Member

## Syntax

```powershell
Set-WSARoleMember [-id] <String> [-groupId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WSARoleMember` cmdlets updates the Role with the given group.

## Examples

### Example 1

```powershell
Set-WSARoleMember -id 55048dee-fe1b-404a-936d-3e0b86a7209e -groupId fe515568-fdcd-43c7-9971-e834d7246203
```

This example updates the Role with the given GroupId in Workspace ONE Access.

## Parameters

### -id

The Role ID.

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

### -groupId

The Group ID.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
