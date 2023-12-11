# Get-vRSLCMProductNtpServer

## Synopsis

Get paginated list of product NTP servers in VMare Aria Suite Lifecycle

## Syntax

```powershell
Get-vRSLCMProductNtpServer [[-ntpServer] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductNtpServer` cmdlet gets a paginated list of product NTP servers in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMProductNtpServer
```

This example gets all product NTP servers in VMware Aria Suite Lifecycle.

## Parameters

### -ntpServer

The NTP server to get from the product NTP configuration in VMware Aria Suite Lifecycle.

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
