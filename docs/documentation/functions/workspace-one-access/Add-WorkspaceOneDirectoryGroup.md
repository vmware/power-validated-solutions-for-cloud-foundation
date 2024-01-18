# Add-WorkspaceOneDirectoryGroup

## Synopsis

Adds Active Directory Group to sync in Workspace ONE Access Appliance

## Syntax

```powershell
Add-WorkspaceOneDirectoryGroup [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-bindUser] <String> [-bindPass] <String> [-baseDnGroup] <String> [-adGroups] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WorkspaceOneDirectoryGroup` cmdlet adds an Active Directory Group to sync in Workspace ONE Access Appliance

- Validates that network connectivity and authentication is possible to Workspace ONE Access
- Adds Active Directory Groups to Workspace ONE Access.

## Examples

### Example 1

```powershell
Add-WorkspaceOneDirectoryGroup -server sfo-wsa01.sfo.rainpole.io -user admin -pass VMw@re1! -domain sfo.rainpole.io -bindUser svc-vsphere-ad -bindPass VMw@re1! -baseDnGroup "ou=Security Groups,dc=sfo,dc=rainpole,dc=io" -adGroups "gg-vrli-admins","gg-vrli-users","gg-vrli-viewers"
```

This example adds Active Directory groups to Workspace ONE Access directory.

## Parameters

### -server

The Workspace ONE Access Appliance FQDN or IP Address.

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

The Workspace ONE Access Appliance admin user.

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

The Workspace ONE Access Appliance admin password.

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

### -domain

The Active Directory Domain name.

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

### -bindUser

The Active Directory Domain user with read access to the domain.

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

### -bindPass

The Active Directory Domain user password.

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

### -baseDnGroup

The Active Directory Domain base DN for groups.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -adGroups

The Active Directory Domain groups to sync.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
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
