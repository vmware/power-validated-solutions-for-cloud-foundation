# Get-NsxtGlobalManagerSegment

## Synopsis

Retrieve the list of configured segments from the NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerSegment [[-segmentId] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerSegment` cmdlet retrieves the list of configured segments from the NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerSegment
```

This example retrieves the list of configured segments from the NSX Global Manager.

### Example 2

```powershell
Get-NsxtGlobalManagerSegment -segmentId "799a0af5-d89b-437b-836f-61361e114f6e"
```

This example retrieves a configured segment from the NSX Global Manager.

## Parameters

### -segmentId

The ID of the segment in the NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
