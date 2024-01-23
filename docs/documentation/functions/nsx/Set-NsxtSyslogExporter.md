# Set-NsxtSyslogExporter

## Synopsis

Sets Syslog exporters

## Syntax

### node

```powershell
Set-NsxtSyslogExporter [-node] -exporterName <String> -logLevel <String> -port <Int32> -protocol <String>
 -server <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### transport

```powershell
Set-NsxtSyslogExporter [-transport] -id <String> -exporterName <String> -logLevel <String> -port <Int32>
 -protocol <String> -server <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtSyslogExporter` cmdlet Sets the Syslog exporters configures for NSX components.

## Examples

### Example 1

```powershell
Set-NsxtSyslogExporter -node -exporterName Syslog1 -logLevel INFO -port 514 -protocol TCP -server sfo-vrli01.sfo.rainpole.io
```

This example gets the status of the syslog service for NSX Manager node

### Example 2

```powershell
Set-NsxtSyslogExporter -transport -id f3bd5bf0-23cd-4c6f-8de5-ab065f74d7fe -exporterName Syslog1 -logLevel INFO -port 514 -protocol TCP -server sfo-vrli01.sfo.rainpole.io
```

This example gets the status of the syslog service for NSX Edge node.

## Parameters

### -node

The NSX Manager node.

```yaml
Type: SwitchParameter
Parameter Sets: node
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -transport

The NSX Edge node.

```yaml
Type: SwitchParameter
Parameter Sets: transport
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -id

The NSX Edge node ID.

```yaml
Type: String
Parameter Sets: transport
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -exporterName

The Syslog exporter name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -logLevel

The Syslog log level.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -port

The Syslog port.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -protocol

The Syslog protocol.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -server

The Syslog server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
