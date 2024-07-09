# New-AriaNetworksLdapConfiguration

## Synonpsis

Configure LDAP authentication in VMware Aria Operations for Networks.

## Syntax

```powershell
New-AriaNetworksLdapConfiguration [-domain] <String> [-url] <String> [-username] <String> [-password] <String> [-userBaseDN] <String> [[-memberDN] <String>] [[-adminDN] <String>] [[-auditorDN] <String>] [<CommonParameters>]
```

## Description

The `New-AriaNetworksLdapConfiguration` cmdlet allows a user to configure LDAP authentication in VMware Aria Operations for Networks to be able to log in to the application with an LDAP user.

## Examples

### Example 1

```powershell
New-AriaNetworksLdapConfiguration -domain rainpole.io -url ldaps://rpl-ad01.rainpole.io:636 -username svc-inv-iam -password VMw@re1! -userBaseDN "dc=rainpole,dc=io" -memberDN "cn=gg-inv-members,ou=security groups,dc=rainpole,dc=io" -adminDN "cn=gg-inv-admins,ou=security groups,dc=rainpole,dc=io" -auditorDN "cn=gg-inv-auditors,ou=security groups,dc=rainpole,dc=io"
```

This example adds a new LDAP server in VMware Aria Operations for Networks with different active directory groups configured for allowing RBAC based on group membership.

## Parameters

### -domain

The domain of the LDAP server.

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

### -url

The url of the LDAP server.

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

### -username

The username to use for authentication to the LDAP domain.

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

### -password

The password to use for authentication to the LDAP domain.

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

### -userBaseDN

The base distinguished name (DN) where the users reside in the LDAP domain.

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

### -memberDN

The group distinguished name (DN) where the members of VMware Aria Operations for Networks reside in the LDAP domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -adminDN

The group distinguished name (DN) where the administrators of VMware Aria Operations for Networks reside in the LDAP domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -auditorDN

The group distinguished name (DN) where the auditors of VMware Aria Operations for Networks reside in the LDAP domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
