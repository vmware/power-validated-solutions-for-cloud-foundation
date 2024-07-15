# Add-vRLIAuthenticationAD

## Synopsis

Configure Active Directory as an authentication source for VMware Aria Operations for Logs.

## Syntax

```powershell
Add-vRLIAuthenticationAD [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-domainBindUser] <String> [-domainBindPass] <String> [-domainServers] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRLIAuthenticationAD` cmdlet configures Active Diretory as an authentication source in VMware Aria Operations for Logs with an SSL connection.
The cmdlet connects to SDDC Manager using the -server, -user,and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Validates that network connectivity is possible to Active Directory
- Configures Active Directory as an authentication source in VMware Aria Operations for Logs

## Examples

### Example 1

```powershell
Add-vRLIAuthenticationAD -server sfo-vrl01.sfo.rainpole.io -user admin -pass VMw@re1! -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -domainServers sfo-ad01.sfo.rainpole.io
```

This example enables Active Directory as an authentication source in VMware Aria Operations for Logs.

## Parameters

### -server

The fully qualified domain name of the Aria Operations for Logs Appliance.

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

The Aria Operations for Logs username.

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

The Aria Operations for Logs password

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

Active Directory domain.

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

### -domainBindUser

Active Directory domain binding user.

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

### -domainBindPass

Active Directory domain binding password.

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

### -domainServers

Active Directory domain server list.

```yaml
Type: Array
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
