# Undo-AriaNetworksLdapConfiguration

## Synopsis

Removes a LDAP configuration from VMware Aria Operations for Networks.

## Syntax

```powershell
Undo-AriaNetworksLdapConfiguration [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Undo-AriaNetworksLdapConfiguration` cmdlet removes a LDAP configuration from VMware Aria Operations
for Networks.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the VMware Aria Suite Lifecyle instance
- Validates that network connectivity and authentication is possible to the VMware Aria Operations for Networks instance
- Removes a LDAP configuration from VMware Aria Operations for Networks.

## Examples

### Example 1

```powershell
Undo-AriaNetworksLdapConfiguration -jsonFile .\invDeploySpec.json
```

This example removes the LDAP configuration from the VMware Aria Operations for Networks instance using the JSON file provided.

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
