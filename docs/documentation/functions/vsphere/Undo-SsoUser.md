# Undo-SsoUser

## Synopsis

Remove a user from vCenter Single Sign-On Group to user.

## Syntax

```powershell
Undo-SsoUser [-server] <String> [-user] <String> [-pass] <String> [-ssoUser] <String> [<CommonParameters>]
```

## Description

The `Undo-SsoUser` cmdlet removes a user to the vCenter Single Sign-On domain The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Validates that the user exist
- Removes the user to the vCenter Single Sign-On domain

## Examples

### Example 1

```powershell
Undo-SsoUser -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -ssoUser svc-vrops-srm@vsphere.local
```

This example removes the user svc-vrops-srm from the vCenter Single Sign-On domain vsphere.local.

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

### -ssoUser

The vCenter Single Sign-On user name.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
