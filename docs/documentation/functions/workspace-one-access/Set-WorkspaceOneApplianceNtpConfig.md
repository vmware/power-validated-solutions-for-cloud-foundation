# Set-WorkspaceOneApplianceNtpConfig

## Synopsis

Configure Workspace ONE Access appliance NTP servers

## Syntax

```powershell
Set-WorkspaceOneApplianceNtpConfig [-vmName] <String> [-rootPass] <String> [[-ntpServer] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WorkspaceOneApplianceNtpConfig` cmdlet configures Workspace ONE Access appliance NTP servers.

## Examples

### Example 1

```powershell
Set-WorkspaceOneApplianceNtpConfig -vmName sfo-wsa01 -rootPass VMw@re1! -ntpServer "ntp.sfo.rainpole.io,ntp.lax.rainpole.io"
```

This example sets the NTP servers for Workspace ONE Access node sfo-wsa01 to ntp.sfo.rainpole.io and ntp.lax.rainpole.io.

## Parameters

### -vmName

The name of the Workspace ONE Access node.

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

### -rootPass

The root password of the Workspace ONE Access node.

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

### -ntpServer

The NTP server to set on the Workspace ONE Access node.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
