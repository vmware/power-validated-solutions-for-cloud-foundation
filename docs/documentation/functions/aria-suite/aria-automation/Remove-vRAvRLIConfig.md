# Remove-vRAvRLIConfig

## Synopsis

Removes the VMware Aria Operations for Logs logging configuration (CFAPI) on VMware Aria Automation.

## Syntax

```powershell
Remove-vRAvRLIConfig [-server] <String> [-user] <String> [-pass] <String> [-rootPass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAvRLIConfig` cmdlet removes the VMware Aria Operations for Logs logging configuration for VMware
Aria Automation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values and
connects to the first VMware Aria Automation appliance using the -rootPass value.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Validates that network connectivity is possible to the first VMware Aria Automation appliance
- Unsets the VMware Aria Operations for Logs configuration in VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAvRLIConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -rootPass VMw@re1!
```

This example removes the VMware Aria Operations for Logs logging configuration on VMware Aria Automation.

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

The user name to authenticate with SDDC Manager.

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

The password to authenticate with SDDC Manager.

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

### -rootPass

The root password to authenticate with the first VMware Aria Automation appliance.

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
