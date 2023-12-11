# Remove-NsxtSyslogExporter

## Synopsis

Delete Syslog exporters

## Syntax

### node

```powershell
Remove-NsxtSyslogExporter [-node] -exporterName <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### transport

```powershell
Remove-NsxtSyslogExporter [-transport] -id <String> -exporterName <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Remove-NsxtSyslogExporter` cmdlet deletes the Syslog exporters for NSX components.

## Examples

### Example 1

```powershell
Remove-NsxtSyslogExporter -node -exporterName Syslog1
```

This example deletes the syslog exporters for NSX Manager node

### Example 2

```powershell
Remove-NsxtSyslogExporter -transport -id f3bd5bf0-23cd-4c6f-8de5-ab065f74d7fe -exporterName Syslog1
```

This example deletes the syslog exporters for for NSX Edge node.

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
