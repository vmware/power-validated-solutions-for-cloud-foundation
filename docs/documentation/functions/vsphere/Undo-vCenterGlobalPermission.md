# Undo-vCenterGlobalPermission

## Synopsis

Removes a Global Permission to a user or group

## Syntax

```powershell
Undo-vCenterGlobalPermission [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String>
 [-domain] <String> [-principal] <String> [-type] <String> [-localDomain] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vCenterGlobalPermission` cmdlets removes the vCenter Server Global Permission for the user or group provided.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Removes the user or group from the vCenter Global Permission

If -localDomain is selected, then AD authentication check is skipped and user/group is checked for in the local directory.

## Examples

### Example 1

```powershell
Undo-vCenterGlobalPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -principal gg-vc-admins -type group
```

This example removes the group gg-vc-admins from domain sfo.rainpole.io from the Global Permissions for vCenter Server instances in the same vCenter Single Sign-On domain as management domain sfo-m01.

### Example 2

```powershell
Undo-vCenterGlobalPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -domain vsphere.local -principal testUser -type user -localdomain
```

This example removes the user testUser from the vCenter Single Sign-on domain vsphere.local from the Global Permissions for vCenter Server instances in the same vCenter Single Sign-On domain as workload domain sfo-w01.

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

### -principal

The user or group name.

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

### -type

Specifies whether the principal is a user or group.

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
