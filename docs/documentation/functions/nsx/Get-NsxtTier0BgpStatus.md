# Get-NsxtTier0BgpStatus

## Synopsis

Returns the status of the BGP routing for NSX Tier-0 gateways.

## Syntax

```powershell
Get-NsxtTier0BgpStatus [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTier0BgpStatus` cmdlet returns the status of the BGP routing for NSX Tier-0 gateways.

## Examples

### Example 1

```powershell
Get-NsxtTier0BgpStatus [-id] <String>
```

This example returns the status of the BGP routing for NSX Tier-0 gateway.

## Parameters

### -id

The id of the NSX Tier-0 gateway.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
