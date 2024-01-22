# Undo-vRLIAuthenticationWSA

## Synopsis

Disable Workspace ONE Access as an authentication source in VMware Aria Operations for Logs.

## Syntax

```powershell
Undo-vRLIAuthenticationWSA [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRLIAuthenticationWSA` cmdlet configures Workspace ONE Access as an authentication source in VMware
Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Disables Workspace ONE Access as an authentication source in VMware Aria Operations for Logs if not already configured

## Examples

### Example 1

```powershell
Undo-vRLIAuthenticationWSA -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
This example disables Workspace ONE Access as an authentication source in VMware Aria Operations for Logs.
```

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
