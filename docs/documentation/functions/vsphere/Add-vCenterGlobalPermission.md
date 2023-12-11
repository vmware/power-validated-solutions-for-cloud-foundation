# Add-vCenterGlobalPermission

## Synopsis

Adds a Global Permission to a user or group

## Syntax

```powershell
Add-vCenterGlobalPermission [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String>
 [-domain] <String> [[-domainBindUser] <String>] [[-domainBindPass] <String>] [-principal] <String>
 [-role] <String> [-propagate] <String> [-type] <String> [-localDomain] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Add-vCenterGlobalPermission` cmdlets assigns the vCenter Server Global Permission to the user or group provided.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the bind credentials are valid
- Validates that the domain is present in vCenter Server as an Identity Provider
- Validates the user or group exists in Active Directory
- Assigns the user or group to the vCenter Global Permission

If -localDomain is selected, then AD authentication check is skipped and user/group is checked for in the local directory.

## Examples

### Example 1

```powershell
Add-vCenterGlobalPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -principal gg-kub-admins -role Admin -propagate true -type group
```

This example adds the group gg-vc-admins from domain sfo.rainpole.io to the Global Permissions with the Administrator role for vCenter Server instances in the same vCenter Single Sign-On domain as management domain sfo-m01.

### Example 2

```powershell
Add-vCenterGlobalPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -domain sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -principal gg-vc-admins -role Admin -propagate true -type group
```

This example adds the group gg-vc-admins from domain sfo.rainpole.io to the Global Permissions with the Administrator role for vCenter Server instances in the same vCenter Single Sign-On domain as workload domain sfo-w01.

### Example 3

```powershell
Add-vCenterGlobalPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain vsphere.local -principal svc-sfo-m01-nsx01-sfo-m01-vc01 -role "NSX to vSphere Integration" -propagate true -type user -localdomain
```

This example adds the user <svc-sfo-m01-nsx01-sfo-m01-vc01@vsphere.local> from the vCenter Single Sign-on domain vsphere.local to Global Permissions with the "NSX to vSphere Integration" role for vCenter Server instances in the same vCenter Single Sign-On domain as management domain sfo-m01.

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

The SDDC Manager management or workload domain name.

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

The Active Directory bind user name.

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

### -domainBindPass

The Active Directory bind password.

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

### -principal

The user or group name.

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

### -role

The role to assign.

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

### -propagate

Specifies whether to propagate the permission to child objects.

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

### -type

Specifies whether the principal is a user or group.

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

### -localDomain

Specifies whether the principal is a user or group in the local directory.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
