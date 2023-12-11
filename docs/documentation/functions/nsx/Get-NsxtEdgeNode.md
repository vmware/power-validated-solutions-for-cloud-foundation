# Get-NsxtEdgeNode

## Synopsis

Get details for NSX Edge.

## Syntax

```powershell
Get-NsxtEdgeNode [-transportNodeId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtEdgeNode` cmdlet returns the details of an NSX Edge node.

## Examples

### Example 1

```powershell
Get-NsxtEdgeNode -transportNodeId 7740f2da-83b5-40de-bc4c-665ea779bbd0
This example returns the details of an NSX Edge node
```

This example returns the details of an NSX Edge node.

## Parameters

### -transportNodeId

The id of the NSX Edge node.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
