# Set-NsxtTransportNode

## Synopsis

Apply configuration to a transport node.

## Syntax

```powershell
Set-NsxtTransportNode [-transportNodeId] <String> [-jsonBody] <String> [<CommonParameters>]
```

## Description

The `Set-NsxtTransportNode` cmdlet applies configuration to a transport node in NSX Manager.

## Examples

### Example 1

```powershell
Set-NsxtTransportNode -transportNodeId 7740f2da-83b5-40de-bc4c-665ea779bbd0 -jsonBody $jsonBody
```

This example applies configuration to a transport node in NSX Manager.

## Parameters

### -transportNodeId

The id of the transport node.

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

### -jsonBody

The JSON payload for the configuration to be applied.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
