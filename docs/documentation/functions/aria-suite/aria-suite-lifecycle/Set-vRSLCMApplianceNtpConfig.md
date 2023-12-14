# Set-vRSLCMApplianceNtpConfig

## Synopsis

Sets the appliance NTP configuration in VMware Aria Suite Lifecycle to use only a specified NTP server

## Syntax

```powershell
Set-vRSLCMApplianceNtpConfig [-ntpServer] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRSLCMApplianceNtpConfig` cmdlet sets the appliance NTP configuration in VMware Aria Suite Lifecycle to use only a specified NTP server.

## Examples

### Example 1

```powershell
Add-vRSLCMApplianceNtpConfig -ntpServer ntp.sfo.rainpole.io
```

This sets the appliance NTP configuration in VMware Aria Suite Lifecycle to use only NTP server ntp.sfo.rainpole.io.

## Parameters

### -ntpServer

The NTP server to set the appliance NTP configuration in VMware Aria Suite Lifecycle to use.

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
