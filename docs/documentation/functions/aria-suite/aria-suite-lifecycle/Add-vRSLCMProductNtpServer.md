# Add-vRSLCMProductNtpServer

## Synopsis

Add a server to product NTP configuration in VMware Aria Suite Lifecycle

## Syntax

```powershell
Add-vRSLCMProductNtpServer [-ntpServer] <String> [-ntpServerDesc] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Add-vRSLCMProductNtpServer` cmdlet adds a server tp product NTP configuration in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Add-vRSLCMProductNtpServer -ntpServer "ntp.lax.rainpole.io" -ntpServerDesc "VCF NTP Server 2"
```

This adds the server ntp.lax.rainpole.io to the product NTP configuration in VMware Aria Suite Lifecycle.

## Parameters

### -ntpServer

The NTP server to add to the product NTP configuration in VMware Aria Suite Lifecycle.

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

### -ntpServerDesc

The description of the NTP server to add to the product NTP configuration in VMware Aria Suite Lifecycle.

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
