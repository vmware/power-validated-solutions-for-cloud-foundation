# Test-NtpServer

## Synopsis

Checks the status of an NTP server

## Syntax

```powershell
Test-NtpServer [-server] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-NtpServer` cmdlet checks the status of an NTP server.

## Examples

### Example 1

```powershell
Test-NtpServer -Server pool.ntp.org
```

This example will return the status of the NTP server responding at pool.ntp.org.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the NTP server to check.

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
