# Add-WorkspaceOneRole

## Synopsis

Assign Active Directory Groups to Roles in the Workspace ONE Access

## Syntax

```powershell
Add-WorkspaceOneRole [-server] <String> [-user] <String> [-pass] <String> [-group] <String> [-role] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WorkspaceOneRole` cmdlet assigns roles to Active Directory groups provided to manage administrative
access to the Workspace ONE Access instance.
The cmdlet connects to SDDC Manager using the -server, -user,
and -password values:

- Validates that network connectivity and authentication is possible to Workspace ONE Access
- Validates the role exists in Workspace ONE Access
- Validates the group exists in Workspace ONE Access
- Assign the role to the group.

## Examples

### Example 1

```powershell
Add-WorkspaceOneRole -server sfo-wsa01.sfo.rainpole.io -user admin -pass VMw@re1! -group "gg-wsa-admins" -role "Super Admin"
This example adds the group gg-wsa-admins the Super Admin role
```

## Parameters

### -server

The FQDN of the Workspace ONE Access Virtual Appliance.

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

### -user

The admin username of the Workspace ONE Access Virtual Appliance.

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

### -pass

The admin password of the Workspace ONE Access Virtual Appliance.

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

### -group

The Active Directory group to assign the role to.

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

### -role

The role to assign to the group.

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
