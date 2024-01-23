# Add-WSALdapDirectory

## Synopsis

Create an LDAP directory

## Syntax

```powershell
Add-WSALdapDirectory [-domainName] <String> [-baseDn] <String> [-bindDn] <String> [[-certificate] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WSALdapDirector` cmdlets creates a new LDAP Active Directory connection in Workspace ONE Access.

## Examples

### Example 1

```powershell
Add-WSALdapDirectory -domainName sfo.rainpole.io -baseDn "ou=VVD,dc=sfo,dc=rainpole,dc=io" -bindDn "cn=svc-wsa-ad,ou=VVD,dc=sfo,dc=rainpole,dc=io"
```

This example creates a new LDAP Active Directory connection in Workspace ONE Access.

## Parameters

### -domainName

The domain name.

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

### -baseDn

The base DN.

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

### -bindDn

The bind DN.

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

### -certificate

The certificate file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
