# New-NsxtLdap

## Synopsis

Add an LDAP identity source

## Syntax

```powershell
New-NsxtLdap [-dcMachineName] <String> [-protocol] <String> [-startTtls] <String> [-domain] <String>
 [-baseDn] <String> [-bindUser] <String> [-bindPassword] <String> [[-certificate] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-NsxtLdap` cmdlet adds an LDAP identity source.

## Examples

### Example 1

```powershell
New-NsxtLdap -dcMachineName dc-sfo01 -protocol LDAPS -startTtls false -domain sfo.rainpole.io -baseDn "ou=Security Users,dc=sfo,dc=rainpole,dc=io" -bindUser svc-nsx-ad@sfo.rainpole.io -bindPassword VMw@re1! -certificate Root64.cer
```

This example create an Active Directory Identity Source over LDAPS

### Example 2

```powershell
New-NsxtLdap -dcMachineName dc-sfo01 -protocol LDAP -startTtls false -domain sfo.rainpole.io -baseDn "ou=Security Users,dc=sfo,dc=rainpole,dc=io" -bindUser svc-nsx-ad@sfo.rainpole.io -bindPassword VMw@re1!
```

This example create an Active Directory Identity Source over LDAP.

## Parameters

### -dcMachineName

The domain controller machine name.

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

### -protocol

The protocol to use (LDAP or LDAPS).

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

### -startTtls

Start TLS.

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

The domain name.

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

### -baseDn

The base DN.

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

### -bindUser

The bind user.

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

### -bindPassword

The bind password.

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

### -certificate

The certificate file.

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
