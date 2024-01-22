# Set-NsxtRole

## Synopsis

Adds a role to a user/group

## Syntax

```powershell
Set-NsxtRole [-principal] <String> [-type] <String> [-role] <String> [-identitySource] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtRole` cmdlet assigns users/groups to roles.

## Examples

### Example 1

```powershell
Set-NsxtRole -principle "gg-nsx-enterprise-admins@lax.rainpole.io"
```

This example assigned the provided group the Enterprise Admin role.

## Parameters

### -principal

The user/group principal.

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

### -type

The type of principal (remote_group or remote_user).

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

The role to assign.

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

### -identitySource

The identity source (LDAP, VIDM, OIDC).

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

### -domain

The domain name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
