# Remove-vRSLCMProductNtpServer

## Synopsis

Removes a specified NTP server from VMware Aria Suite Lifecycle

## Syntax

```powershell
Remove-vRSLCMProductNtpServer [[-ntpServer] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMProductNtpServer` cmdlet removes a specified NTP server from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Remove-vRSLCMProductNtpServer -ntpServer ntp.lax.rainpole.io
```

This example gets all product NTP servers in VMware Aria Suite Lifecycle.

## Parameters

### -ntpServer

The NTP server to remove from the product NTP configuration in VMware Aria Suite Lifecycle.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
