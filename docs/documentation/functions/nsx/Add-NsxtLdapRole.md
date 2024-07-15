# Add-NsxtLdapRole

## Synopsis

Assign an LDAP user/group with role-based access control in NSX Manager.

## Syntax

```powershell
Add-NsxtLdapRole [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-principal] <String> [-type] <String> [-role] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-NsxtLdapRole` cmdlet asignes role assignments in NSX Manager for LDAP users/groups.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to NSX Manager
- Assigns Active Directory of LDAP users or groups to NSX Manager roles based on the -type, -principal, and -role values

## Examples

### Example 1

```powershell
Add-NsxtLdapRole -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -type group -principal "gg-nsx-enterprise-admins@sfo.rainpole.io" -role enterprise_admin
```

This example assigns the LDAP group 'gg-nsx-enterprise-admins@sfo.rainpole.io' with the enterprise_admin role in NSX Manager.

### Example 2

```powershell
Add-NsxtLdapRole -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -type user -principal "svc-vcf-ca@sfo.rainpole.io" -role enterprise_admin
```

This example assigns the LDAP user 'svc-vcf-ca@sfo.rainpole.io' with the enterprise_admin role in NSX Manager.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

The username to authenticate to the SDDC Manager.

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

The password to authenticate to the SDDC Manager.

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

The name of the Management Domain.

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

### -principal

The type of principal to assign the role to.

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

### -type

The principal to assign the role to.

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

### -role

The role to assign to the principal.

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
