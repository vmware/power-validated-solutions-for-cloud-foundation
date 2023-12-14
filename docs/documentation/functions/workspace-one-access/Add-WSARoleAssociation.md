# Add-WSARoleAssociation

## Synopsis

Add the AD group to the WSA role

## Syntax

```powershell
Add-WSARoleAssociation [-roleId] <String> [-groupId] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

`Add-WSARoleAssociation` cmdlet the AD group to the given WSA role.

## Examples

### Example 1

```powershell
Add-WSARoleAssociation -roleId "1d0b09a1-8744-4f85-8c4f-ac104e586010" -groupId "1e942dc6-94ba-43ef-97ce-9ba34fee1609"
```

## Parameters

### -roleId

The role id

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

The group id.

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
