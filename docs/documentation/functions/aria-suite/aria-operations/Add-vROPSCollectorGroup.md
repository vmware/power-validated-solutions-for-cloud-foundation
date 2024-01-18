# Add-vROPSCollectorGroup

## Synopsis

Add a collector group

## Syntax

```powershell
Add-vROPSCollectorGroup [-name] <String> [[-description] <String>] [[-collectorIds] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSCollectorGroup` cmdlet adds a collector group in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSCollectorGroup -name sfo-remote-collectors -description "Collector Group for SFO" -collectorIds "1,2"
```

This example gets a list of collector groups.

## Parameters

### -name

The name of the collector group.

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

### -description

The description of the collector group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -collectorIds

The IDs of the collectors to add to the group.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
