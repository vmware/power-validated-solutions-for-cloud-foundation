# Add-vROPSUserAccount

## Synopsis

Imports a user account from an authentication source.

## Syntax

```powershell
Add-vROPSUserAccount [-sourceId] <String> [-userName] <String> [-lastName] <String> [-firstName] <String> s[-distinguishedName] <String> [-role] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSUserAccount` cmdlet imports a user account from the authentication source into VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSUserAccount -userName <user_account_name> -lastName <user_last_name> -firstName <user_first_name> -distinguishedName <user_distinguishedName> -role <role_name>
```

This example imports a user account from the authentication source and assigns a role.

## Parameters

### -sourceId

The ID of the authentication source to import the user account from.

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

### -userName

The name of the user account to import.

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

### -lastName

The last name of the user account to import.

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

### -firstName

The first name of the user account to import.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -distinguishedName

The distinguished name of the user account to import.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -role

The name of the role to assign to the user account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
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
