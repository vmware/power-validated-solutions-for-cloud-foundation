# Get-NsxtTransportNodeStatus

## Synopsis

Get the status of the NSX transport nodes.

## Syntax

```powershell
Get-NsxtTransportNodeStatus [[-type] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTransportNodeStatus` cmdlet returns the status of the transport nodes.

## Examples

### Example 1

```powershell
Get-NsxtTransportNodeStatus
```

This example returns the status of all transport nodes.

### Example 2

```powershell
Get-NsxtTransportNodeStatus -type edge
```

This example returns the status of the edge transport nodes.

### Example 3

```powershell
Get-NsxtTransportNodeStatus -type host
```

This example returns the status of the host transport nodes.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
