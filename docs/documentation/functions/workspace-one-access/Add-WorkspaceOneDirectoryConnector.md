# Add-WorkspaceOneDirectoryConnector

## Synopsis

Adds a connector to the directory in Workspace ONE Access Appliance

## Syntax

```powershell
Add-WorkspaceOneDirectoryConnector [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-wsaNode] <String> [-wsaUser] <String> [-wsaPass] <String> [-bindUserPass] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WorkspaceOneDirectoryConnector` cmdlet adds a connector to the directory in Workspace ONE Access Appliance.

## Examples

### Example 1

```powershell
Add-WorkspaceOneDirectoryConnector -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo.rainpole.io -wsaNode xint-wsa01b.rainpole.io -wsaUser admin -wsaPass VMw@re1! -bindUserPass VMw@re1!
```

This example adds Active Directory groups to Workspace ONE Access directory.

## Parameters

### -server

The Workspace ONE Access FQDN.

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

The Workspace ONE Access Administrator username.

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

The Workspace ONE Access Administrator password.

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

The Active Directory domain name.

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

### -wsaNode

The Workspace ONE Access Connector node name.

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

### -wsaUser

The Workspace ONE Access Connector Administrator username.

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

### -wsaPass

The Workspace ONE Access Connector Administrator password.

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

### -bindUserPass

The Active Directory Bind User password.

```yaml
Type: String
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
