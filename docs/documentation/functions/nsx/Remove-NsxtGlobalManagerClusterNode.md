# Remove-NsxtGlobalManagerClusterNode

## Synopsis

Remove an NSX Global Manager from a cluster.

## Syntax

```powersehll
Remove-NsxtGlobalManagerClusterNode [-uuid] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerClusterNode` cmdlet removes an NSX Global Manager from a cluster.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerClusterNode -uuid f1563a42-ebe0-406b-3255-8d8fbc70cb91 
```

This example removes an NSX Global Manager from a cluster.

## Parameters

### -uuid

The unique identifier for the node to be removed from the cluster.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
