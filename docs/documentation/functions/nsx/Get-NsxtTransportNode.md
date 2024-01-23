# Get-NsxtTransportNode

## Synopsis

Returns information about all transport nodes with host or edge details.

## Syntax

```powershell
Get-NsxtTransportNode [[-type] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTransportNode` cmdlet returns information about all transport nodes with host or edge details.

## Examples

### Example 1

```powershell
Get-NsxtTransportNode
```

This example returns information about all transport nodes with host or edge details.

### Example 2

```powershell
Get-NsxtTransportNode -type edge
```

This example returns information about all edge transport nodes with details.

### Example 3

```powershell
Get-NsxtTransportNode -type host
```

This example returns information about all host transport nodes with details.

## Parameters

### -type

The type of transport node.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
