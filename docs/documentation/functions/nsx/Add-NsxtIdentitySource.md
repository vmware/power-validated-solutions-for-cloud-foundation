# Add-NsxtIdentitySource

## Synopsis

Add Active Directory over LDAP/LDAPS as an Identity Provider to NSX Manager.

## Syntax

```powershell
Add-NsxtIdentitySource [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String>
 [-domain] <String> [-domainBindUser] <String> [-domainBindPass] <String> [-dcMachineName] <String>
 [-baseDn] <String> [-protocol] <String> [[-certificate] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-NsxtIdentitySource` cmdlets adds Active Directory over LDAP/LDAPS as an Identity Provider to the NSX
Manager.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to NSX Manager
- Verifies a connection to the Active Directory Domain Controller using the -domain and -dcMachineName values
- Adds the Active Directory Domain as an Identity Provider if not already present

## Examples

### Example 1

```powershell
Add-NsxtIdentitySource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -dcMachineName sfo-ad01 -baseDn "dc=sfo,dc=rainpole,dc=io" -protocol ldap
```

This example adds the sfo.rainpole.io domain as an Identity Provider to NSX Manager using LDAP

### Example 2

```powershell
Add-NsxtIdentitySource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -dcMachineName sfo-ad01 -baseDN "dc=sfo,dc=rainpole,dc=io" -protocol ldaps -certificate F:\certificates\Root64.cer
```

This example adds the sfo.rainpole.io domain as an Identity Provider to NSX Manager using LDAPS.

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

### -sddcDomain

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

### -domain

The name of the Active Directory Domain.

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

### -domainBindUser

The username of the Active Directory Domain Bind User.

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

### -domainBindPass

The password of the Active Directory Domain Bind User.

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

### -dcMachineName

The name of the Active Directory Domain Controller.

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

### -baseDn

The base DN of the Active Directory Domain.

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

### -protocol

The protocol to use for the connection to the Active Directory Domain Controller.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificate

The certificate to use for the connection to the Active Directory Domain Controller.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
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
