# Undo-SsoPermission

## Synopsis

Remove user/group from vCenter Single Sign-On Group

## Syntax

```powershell
Undo-SsoPermission [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-domain] <String> [-principal] <String> [-ssoGroup] <String> [-type] <String> [-source] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-SsoPermission` cmdlet removes the user or group provided from vCenter Single Sign-On Role.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the domain is present in vCenter Server as an Identity Provider
- Removes the user or group from the vCenter Single Sign-On Role.

## Examples

### Example 1

```powershell
Undo-SsoPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain sfo.rainpole.io -principal gg-sso-admins -ssoGroup "Administrators" -type group -source external
```

This example removes the group gg-sso-admins in domain sfo.rainpole.io from the Administrators vCenter Single Sign-On Group.

### Example 2

```powershell
Undo-SsoPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -domain vsphere.local -principal svc-sfo-m01-nsx01-sfo-m01-vc01 -ssoGroup "LicenseService.Administrators" -type user -source local
```

This example removes the user svc-sfo-m01-nsx01-sfo-m01-vc01 in domain vspherel.local from the LicenseService.Administrators vCenter Single Sign-On Group.

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

.

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

### -ssoGroup

The vCenter Single Sign-On Group to assign.

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

### -type

Specifies whether the principal is a user or group.

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

### -source

Specifies whether the principal is a user or group in the local directory.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
