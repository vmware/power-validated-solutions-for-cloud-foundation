# Initialize-WorkspaceOne

## Synopsis

Initalize Workspace ONE Access Virtual Appliance

## Syntax

```powershell
Initialize-WorkspaceOne [-wsaFqdn] <String> [-adminPass] <String> [-rootPass] <String> [-sshUserPass] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Initialize-WorkspaceOne` cmdlet performs the initial configuration of Workspace ONE Access Virtual Appliance.

- Validates that network connectivity is possible to Workspace ONE Access
- Sets the default password for the admin, root and SSH Users
- Initializes the internal PostgrsSQL database
- Activates the default connector.

## Examples

### Example 1

```powershell
Initialize-WorkspaceOne -wsaFqdn sfo-wsa01.sfo.rainpole.io -adminPass VMw@re1! -rootPass VMw@re1! -sshUserPass VMw@re1!
```

This example initialzes the Workspace ONE Access Virtual Appliance sfo-wsa01.sfo.rainpole.io and sets the default passwords for admin, root and SSH User.

## Parameters

### -wsaFqdn

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

### -adminPass

The default password for the admin user.

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

### -rootPass

The default password for the root user.

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

### -sshUserPass

The default password for the SSH User.

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
