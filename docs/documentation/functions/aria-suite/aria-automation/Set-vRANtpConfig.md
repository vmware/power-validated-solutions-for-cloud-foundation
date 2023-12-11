# Set-vRANtpConfig

## Synopsis

Configure NTP servers on VMware Aria Automation appliances

## Syntax

```powershell
Set-vRANtpConfig [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String> [-vraPass] <String>
 [-environmentName] <String> [[-ntpServers] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRANtpConfig` cmdlet configures the NTP server details of all VMware Aria Automation appliances to the
values passed as parameters.
The cmdlet connects to SDDC Manager using the -server, -user, and -password
values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures all VMware Aria Automation appliance NTP configuration to the values passed to the function using
-ntpServers.

## Examples

### Example 1

```powershell
Set-vRANtpConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vraUser configadmin -vraPass VMw@re1! -environmentName xint-env -ntpServers "ntp.sfo.rainpole.io ntp.lax.rainpole.io"
```

This example configures the VMware Aria Automation appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use ntp.sfo.rainpole.io and ntp.lax.rainpole.io as their NTP servers.

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

The username of the SDDC Manager instance.

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

The password of the SDDC Manager instance.

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

The username of the VMware Aria Automation appliance.

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

The password of the VMware Aria Automation appliance.

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

### -environmentName

The name of the environment to configure.

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

### -ntpServers

The NTP server(s) to configure on the VMware Aria Automation appliances.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
