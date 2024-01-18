# Watch-WmClusterConfigStatus

## Synopsis

Poll request

## Syntax

```powershell
Watch-WmClusterConfigStatus [-wmClusterName] <String> [[-retriesCount] <Int32>] [[-sleepTime] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Watch-WmClusterConfigStatus` cmdlet polls the status of wmCluster.

## Examples

### Example 1

```powershell
Watch-WmClusterConfigStatus -wmClusterName <wmCluster name>
```

This example polls the status of wmCluster.

## Parameters

### -wmClusterName

The name of the wmCluster.

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

### -retriesCount

The number of retries.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -sleepTime

The sleep time between retries.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 30
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
