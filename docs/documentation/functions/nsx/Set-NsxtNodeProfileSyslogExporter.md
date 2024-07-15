# Set-NsxtNodeProfileSyslogExporter

## Synopsis

Sets a node profile syslog exporter.

## Syntax

```powershell
Set-NsxtNodeProfileSyslogExporter [-id] <String> [-server] <String> [-port] <Int32> [-protocol] <String> [-logLevel] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtNodeProfileSyslogExporter` cmdlet adds a syslog exporter to an NSX node profile for configuration of NSX components included in the node profile.

## Examples

### Example 1

```powershell
Set-NsxtNodeProfileSyslogExporter -id "00000000-0000-0000-0000-000000000001" -server "sfo-vrli01.sfo.rainpole.io" -port 514 -protocol TCP -logLevel INFO
```

This example add a single syslog exporter to the NSX node profile the id of the profile.
Note: This function only supports a single syslog exporter.

## Parameters

### -id

The id of the node profile.

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

### -server

The syslog server.

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

### -port

The syslog server port.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -protocol

The syslog protocol.

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

### -logLevel

The syslog log level.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
