# Add-vRAUser

## Synopsis

Adds user access in an organization.

## Syntax

```powershell
Add-vRAUser [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String> [-vraPass] <String> [-email] <String> [-orgRole] <String> [-serviceRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRAUser` cmdlet adds user access in VMware Aria Automation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Automation has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Automation
- Adds the user to both an organization role and a service role.

## Examples

### Example 1

```powershell
Add-vRAUser -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vraUser configadmin -vraPass VMw@re1! -email jdoe@rainpole.io -orgRole org_member -serviceRole automationservice:cloud_admin
```

This example adds user access in VMware Aria Automation by userId and orgId along with the required orgRole and serviceRole.

Note: This cmdlet currently only supports a single serviceRole.

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

### -vraUser

The VMware Aria Automation user account to use for authentication.

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

The VMware Aria Automation user password to use for authentication.

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

The user email address to add to VMware Aria Automation.

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

### -orgRole

The organization role to add to VMware Aria Automation.

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

### -serviceRole

The service role to add to VMware Aria Automation.

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
