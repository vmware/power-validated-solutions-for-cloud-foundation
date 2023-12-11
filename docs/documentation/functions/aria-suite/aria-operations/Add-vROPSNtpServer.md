# Add-vROPSNtpServer

## Synopsis

Adds an NTP server to all VMware Aria Operations appliances

## Syntax

```powershell
Add-vROPSNtpServer [-server] <String> [-user] <String> [-pass] <String> [-environmentName] <String>
 [-ntpServer] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The Add-vROPSNtpServer cmdlet adds an NTP server to all VMware Aria Operations appliances.
The cmdlet
connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures all VMware Aria Operations appliances to use an additional NTP server defined using the value
passed to the function using -ntpServer.

## Examples

### Example 1

```powershell
Add-vROPSNtpServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -environmentName xint-env -ntpServer ntp.lax.rainpole.io
```

This example configures the VMware Aria Operations appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to add the NTP server ntp.lax.rainpole.io.

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

### -environmentName

The name of the environment to configure.

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

### -ntpServer

The NTP server to add to the VMware Aria Operations appliances.

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
