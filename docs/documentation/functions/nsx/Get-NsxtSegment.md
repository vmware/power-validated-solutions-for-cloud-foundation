# Get-NsxtSegment

## Synopsis

Get a list of Segments

## Syntax

```powershell
Get-NsxtSegment [[-name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtSegment` cmdlet retrieves a list of Segments.

## Examples

### Example 1

```powershell
Get-NsxtSegment
```

This example gets all Segments

### Example 2

```powershell
Get-NsxtSegment -name sfo-w01-kub-seg01
```

This example gets the segment with the name sfo-w01-kub-seg01.

## Parameters

### -name

The Segment name.

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
