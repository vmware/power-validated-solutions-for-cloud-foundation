# Add-vRSLCMGroupRole

## Synopsis

Assigns a group from the authentication provider with a role in VMware Aria Suite Lifecycle.

## Syntax

``` PowerShell
Add-vRSLCMGroupRole [-server] <String> [-user] <String> [-pass] <String> [-group] <String> [-role] <String> [<CommonParameters>]
```

## Description

The `Add-vRSLCMGroupRole` cmdlet assigns access to a group from the authentication provider.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
- Validates that the group has not already been assigned access to VMware Aria Suite Lifecycle
- Adds the group to the access control assigning the role provided in VMware Aria Suite Lifecycle

## Examples

### Example 1

``` PowerShell
Add-vRSLCMGroupRole -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -group gg-vrslcm-admins@sfo.rainpole.io -role 'LCM Admin'
```

This example adds the group gg-vrslcms-admins with the LCM Admin role in VMware Aria Suite Lifecycle.

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

### -group

The group name.

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

### -role

The role to assign to the group 'LCM Admin', 'Content Developer', 'Content Release Manager', 'Certificate Administrator', 'VCF Role'.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
