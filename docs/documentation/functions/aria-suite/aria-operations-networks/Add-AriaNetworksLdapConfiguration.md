# Add-AriaNetworksLdapConfiguration

## Synopsis

Adds a LDAP configuration to VMware Aria Operations for Networks.

## Syntax

```powershell
Add-AriaNetworksLdapConfiguration [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Add-AriaNetworksLdapConfiguration` cmdlet adds a new LDAP configuration to VMware Aria Operations
for Networks.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the VMware Aria Suite Lifecyle instance
- Validates that network connectivity and authentication is possible to the VMware Aria Operations for Networks instance
- Adds a new LDAP configuration to VMware Aria Operations for Networks.

## Examples

### Example 1

```powershell
Add-AriaNetworksLdapConfiguration -jsonFile .\invDeploySpec.json
```

This example adds the LDAP configuration in the VMware Aria Operations for Networks instance using the JSON file provided.

## Parameters

### -jsonFile

The path to the JSON specification file.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
