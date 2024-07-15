# Remove-NsxtNodeProfileSyslogExporter

## Synopsis

Removes all node profile syslog exporters.

## Syntax

```powershell
Remove-NsxtNodeProfileSyslogExporter [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-NsxtNodeProfileSyslogExporter` cmdlet removes all syslog exporters from an NSX node profile for configuration of NSX components included in the node profile.

## Examples

### Example 1

```powershell
Remove-NsxtNodeProfileSyslogExporter -id "00000000-0000-0000-0000-000000000001"
```

This example add a single syslog exporter to the NSX node profile the id of the profile.

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
