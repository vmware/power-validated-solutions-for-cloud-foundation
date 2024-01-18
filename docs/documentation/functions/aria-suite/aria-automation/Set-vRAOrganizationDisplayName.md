# Set-vRAOrganizationDisplayName

## Synopsis

Configures the organization display name

## Syntax

```powershell
Set-vRAOrganizationDisplayName [-orgId] <String> [-displayName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRAOrganizationDisplayName` cmdlet sets the organization display name.

## Examples

### Example 1

```powershell
Set-vRAOrganizationDisplayName -orgId <String> -displayName <String> -displayName
```

This example configures the organization display name for the organization Id provided.

## Parameters

### -orgId

The organization Id to configure.

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

### -displayName

The display name to configure.

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
