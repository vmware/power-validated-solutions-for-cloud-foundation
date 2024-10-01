# Add-WorkspaceOneDirectory

## Synopsis

Configure Active Directory LDAP Directory in Workspace ONE Access Appliance.

## Syntax

```powershell
Add-WorkspaceOneDirectory [-server] <String> [-user] <String> [-pass] <String> [-domainController] <String> [-domain] <String> [-baseDnUser] <String> [-baseDnGroup] <String> [-bindUserDn] <String> [-bindUserPass] <String> [-adGroups] <Array> [-protocol] <String> [[-certificate] <String>] [<CommonParameters>]
```

## Description

The `Add-WorkspaceOneDirectory` cmdlet configures Active Directory LDAP Directory in Workspace ONE Access Appliance.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to Workspace ONE Access
- Validates that the bind user can authenticate to the domain
- Creates an identity provider within Workspace ONE Access

## Examples

### Example 1

```powershell
Add-WorkspaceOneDirectory -server xint-idm01.rainpole.io -user admin -pass VMw@re1! -domainController sfo-ad01.sfo.rainpole.io -domain sfo.rainpole.io -baseDnUser "OU=Security Users,DC=sfo,DC=rainpole,DC=io" -baseDnGroup "OU=Security Groups,DC=sfo,DC=rainpole,DC=io" -bindUserDn "CN=svc-idm-ad,OU=Security Users,DC=sfo,DC=rainpole,DC=io" -bindUserPass VMw@re1! -adGroups "gg-idm-admins", "gg-idm-directory-admins", "gg-idm-read-only", "gg-lcm-admins", "gg-lcm-release-managers", "gg-lcm-content-developers" -protocol "ldaps" -certificate ".\Root64.pem"
```

This example configures the domain sfo.rainpole.io as a directory source in Workspace ONE Access Virtual Appliance and syncronises the groups provided

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

### -domainController

The FQDN of the Domain Controller.

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

The domain name of the Active Directory Domain.

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

### -baseDnUser

The base DN of the Active Directory Users.

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

The base DN of the Active Directory Groups.

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

### -bindUserDn

The bind user DN of the Active Directory Domain.

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

### -bindUserPass

The bind user password of the Active Directory Domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -adGroups

The Active Directory Groups to synchronize.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -protocol

The protocol to use for the connection to the Active Directory Domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificate

The Root Certificate Authority certificate file (.cer).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
