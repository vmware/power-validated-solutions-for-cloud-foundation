# Add-vRSLCMNtpServer

## Synopsis

Add an NTP Server for the VMware Aria Suite Lifecycle appliance

## Syntax

```powershell
Add-vRSLCMNtpServer [-server] <String> [-user] <String> [-pass] <String> [-ntpServer] <String>
 [-ntpServerDesc] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMNtpServer` cmdlet configures the NTP Server details of the VMware Aria Suite Lifecycle
appliance using one or more NTP servers passed as a parameter.
The cmdlet connects to SDDC Manager using
the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures the VMware Aria Suite Lifecycle appliance NTP configuration.

## Examples

### Example 1

```powershell
Add-vRSLCMNtpServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -ntpServer ntp.lax.rainpole.io -ntpServerDesc "VCF NTP Server 2"
```

This example configures the VMware Aria Suite Lifecycle appliance managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to add ntp.lax.rainpole.io to its list of NTP servers.

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

### -ntpServer

The NTP server to add to the VMware Aria Suite Lifecycle appliance.

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

### -ntpServerDesc

The NTP server description to add to the VMware Aria Suite Lifecycle appliance.

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
