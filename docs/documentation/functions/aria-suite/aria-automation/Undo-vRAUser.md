# Undo-vRAUser

## Synopsis

Removes user access from an organization.

## Syntax

```powershell
Undo-vRAUser [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String> [-vraPass] <String>
 [-email] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRAUser` cmdlet removes user access in VMware Aria Automation.
The cmdlet connects to SDDC Manager
using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Automation has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Automation
- Removes the user from an organization role and all service roles.

## Examples

### Example 1

```powershell
Undo-vRAUser -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vraUser configadmin -vraPass VMw@re1! -email jdoe@rainpole.io
```

This example removes user access from VMware Aria Automation by email.

Note: This cmdlet currently only supports a single serviceRole.

Note: This cmdlet does not remove the user from the organization, only the organization role and service roles.

Note: This cmdlet does not remove the user from the VMware Cloud Foundation SDDC Manager.

Note: This cmdlet does not remove the user from Workspace ONE Access.

Note: This cmdlet does not remove the user from the vCenter Server.

Note: This cmdlet does not remove the user from the vRealize Automation Cloud Zone.

Note: This cmdlet does not remove the user from the vRealize Automation Cloud Zone Configuration.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the SDDC Manager.

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

The user name of the SDDC Manager.

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

The password of the SDDC Manager.

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

### -vraUser

The user name of the VMware Aria Automation Orchestrator.

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

### -vraPass

The password of the VMware Aria Automation Orchestrator.

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

### -email

The email address of the user to remove from the organization role and service roles.

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
