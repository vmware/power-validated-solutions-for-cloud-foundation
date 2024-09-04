# Set-NsxtGlobalManagerSegment

## Synopsis

Apply the configuration to the NSX Global Manager segment.

## Syntax

```powershell
Set-NsxtGlobalManagerSegment [-segmentId] <String> [-jsonBody] <String> [<CommonParameters>]
```

## Description

The `Set-NsxtGlobalManagerSegment` cmdlet applies the configuration to a transport node in NSX Manager.

## Examples

### Example 1

```powershell
Set-NsxtGlobalManagerSegment -segmentId 7740f2da-83b5-40de-bc4c-665ea779bbd0 -jsonBody $jsonBody
```

This example applies the configuration to the NSX Global Manager segment.

## Parameters

### -segmentId

The ID of the segment.

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
