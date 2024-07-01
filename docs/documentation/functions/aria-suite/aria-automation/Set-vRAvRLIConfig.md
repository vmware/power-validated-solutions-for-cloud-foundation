# Set-vRAvRLIConfig

## Synopsis

Sets the VMware Aria Operations for Logs logging configuration (CFAPI) on VMware Aria Automation.

## Syntax

```powershell
Set-vRAvRLIConfig [-server] <String> [-user] <String> [-pass] <String> [-rootPass] <String> [-protocol] <String> [[-port] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRAvRLIConfig` cmdlet sets the VMware Aria Operations for Logs logging configuration for VMware Aria Automation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values and connects to the first VMware Aria Automation appliance using the -rootPass value.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Validates that network connectivity is possible to the first VMware Aria Automation appliance
- Sets the VMware Aria Operations for Logs configuration on VMware Aria Automation.

## Examples

### Example 1

```powershell
Set-vRAvRLIConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -rootPass VMw@re1! -protocol HTTPS
```

This example sets the VMware Aria Operations for Logs logging configuration on VMware Aria Automation.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

The root password to connect to the first VMware Aria Automation appliance.

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

### -protocol

The protocol to use for the VMware Aria Operations for Logs logging configuration.
The acceptable values for this parameter are: "HTTPS", "HTTP"

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

### -port

The port to use for the VMware Aria Operations for Logs logging configuration.
The default value for this parameter is 9543.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
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
