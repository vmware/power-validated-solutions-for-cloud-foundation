# Add-vRSLCMApplianceNtpConfig

## Synopsis

Add a server to appliance NTP configuration in VMware Aria Suite Lifecycle

## Syntax

```powershell
Add-vRSLCMApplianceNtpConfig [-ntpServer] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMApplianceNtpConfig` cmdlet adds a server to appliance NTP configuration in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Add-vRSLCMApplianceNtpConfig -ntpServer ntp.lax.rainpole.io
```

This adds the server ntp.lax.rainpole.io to the appliance NTP configuration in VMware Aria Suite Lifecycle.

## Parameters

### -ntpServer

The NTP server to add to the appliance NTP configuration in VMware Aria Suite Lifecycle.

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
