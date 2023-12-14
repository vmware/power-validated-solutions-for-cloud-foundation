# Undo-vRLIAuthenticationGroup

## Synopsis

Remove a group from the authentication provider in VMware Aria Operations for Logs.

## Syntax

```powershell
Undo-vRLIAuthenticationGroup [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-group] <String> [-authProvider] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The Undo-vRLIAuthenticationGroup cmdlet removes access to a group based on the authentication provider.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Validates that the group has not already been removed from VMware Aria Operations for Logs
- Removes access assigned from VMware Aria Operations for Logs

## Examples

### Example 1

```powershell
Undo-vRLIAuthenticationGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo.rainpole.io -group gg-vrli-admins -authProvider vidm
```

This example removes the group gg-vrli-admins assigned via Workspace ONE Access from its assigned role in VMware Aria Operations for Logs

### Example 2

```powershell
Undo-vRLIAuthenticationGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo.rainpole.io -group gg-vrli-admins -authProvider ad
```

This example removes the group gg-vrli-admins assigned via Active Directory from its assigned role in VMware Aria Operations for Logs.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the a VMware Aria Operations for Logs cluster or node.

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

The user to connect to the VMware Aria Operations for Logs appliance.

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

The password to connect to the VMware Aria Operations for Logs appliance.

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

### -group

The group name.

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

### -authProvider

Authentication Provider either Active Directory or WorkspaceOne

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
