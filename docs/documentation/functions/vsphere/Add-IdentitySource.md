# Add-IdentitySource

## Synopsis

Add Active Directory over LDAP/LDAPS as an Identity Provider to vCenter Server

## Syntax

```powershell
Add-IdentitySource [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String>
 [-domain] <String> [-domainBindUser] <String> [-domainBindPass] <String> [-dcMachineName] <String>
 [-baseGroupDn] <String> [-baseUserDn] <String> [-protocol] <String> [[-certificate] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-IdentitySource` cmdlets adds Active Directory over LDAP/LDAPS as an Identity Provider to the vCenter
Server and configures is as the default provider.
The cmdlet connects to SDDC Manager using the -server,
-user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Verifies a connection to the Active Directory Domain Controller using the -domain and -dcMachineName values
- Adds the Active Directory Domain as an Identity Provider if not already present
- Configures the new LDAP/LDAPs Identity Provider as the default.

## Examples

### Example 1

```powershell
Add-IdentitySource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -dcMachineName sfo-ad01 -baseGroupDn "ou=Security Groups,dc=sfo,dc=rainpole,dc=io" -baseUserDn "ou=Security Users,dc=sfo,dc=rainpole,dc=io" -protocol ldap
```

This example adds the sfo.rainpole.io domain as the default Identity Provider to vCenter Server using LDAP

### Example 2

```powershell
Add-IdentitySource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -dcMachineName sfo-ad01 -baseGroupDn "ou=Security Groups,dc=sfo,dc=rainpole,dc=io" -baseUserDn "ou=Security Users,dc=sfo,dc=rainpole,dc=io" -protocol ldaps -certificate F:\certificates\Root64.cer
```

This example adds the sfo.rainpole.io domain as the default Identity Provider to vCenter Server using LDAPS.

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

The name of the workload domain to run against.

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

The Active Directory domain name.

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

The Active Directory bind user.

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

The Active Directory bind user password.

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

The Active Directory Domain Controller machine name.

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

### -baseGroupDn

The Active Directory base group DN.

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

### -baseUserDn

The Active Directory base user DN.

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

### -protocol

The protocol to use for communication with Active Directory (ldap or ldaps).

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

The certificate to use for communication with Active Directory (ldaps only).

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
