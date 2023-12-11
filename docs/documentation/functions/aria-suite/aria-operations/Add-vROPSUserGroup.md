# Add-vROPSUserGroup

## Synopsis

Import user group from an authentication source

## Syntax

```powershell
Add-vROPSUserGroup [-sourceId] <String> [-userGroup] <String> [-role] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSUserGroup` cmdlet imports a user group from the authentication source into VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSUserGroup -sourceId <string> -userGroup <user_group_name> -role <role_name>
```

This example imports a user group from the authentication source and assigns the Administrator Role.

## Parameters

### -sourceId

The ID of the authentication source to import the user group from.

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

### -userGroup

The name of the user group to import.

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

### -role

The name of the role to assign to the user group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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
