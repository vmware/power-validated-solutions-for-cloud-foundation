# Add-SddcManagerRole

## Synopsis

Assign SDDC Manager roles to a user/group

## Syntax

```powershell
Add-SddcManagerRole [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-domainBindUser] <String> [-domainBindPass] <String> [-principal] <String> [-role] <String> [-type] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-SddcManagerRole` cmdlet assigns an SDDC Manager role to the user or group provided.
The cmdlet connects
to SDDC Manager using the -server, -user, and -password values:

- Verifies that the bind credetials are valid
- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Verifies that the domain is present in vCenter Server as an Identity Provider
- Verifies the user or group exists in Active Directory
- Assigns the user or group to the SDDC Manager role.

## Examples

### Example 1

```powershell
Add-SddcManagerRole -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -principal gg-vcf-admins -role ADMIN -type group
```

This example assigns the group gg-vcf-admins from domain sfo.rainpole.io the SDDC Manager role ADMIN

### Example 2

```powershell
Add-SddcManagerRole -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -principal compliance -role OPERATOR -type user

```

This example assigns the user compliance from domain sfo.rainpole.io the SDDC Manager role OPERATOR.

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

### -domainBindUser

The Active Directory bind user.

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

The Active Directory bind user password.

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

### -principal

The user or group to assign the role to.

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

### -role

The role to assign to the user or group.

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

### -type

The type of user or group to assign the role to (group or user).

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
