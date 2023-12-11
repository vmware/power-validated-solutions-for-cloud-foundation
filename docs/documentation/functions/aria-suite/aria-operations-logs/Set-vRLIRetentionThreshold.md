# Set-vRLIRetentionThreshold

## Synopsis

Configuer the retention threshold settings

## Syntax

```powershell
Set-vRLIRetentionThreshold [-enable] <String> [-interval] <Int32> [-intervalUnit] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLIRetentionThreshold` cmdlet configures the retention settings in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLIRetentionThreshold -enable true -interval 1 -intervalUnit weeks
```

This example configures the retention configuration.

## Parameters

### -enable

Enable or disable the retention configuration.

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

### -interval

The interval for the retention configuration.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -intervalUnit

The interval unit for the retention configuration.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
