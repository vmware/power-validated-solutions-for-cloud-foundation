# New-NsxtTier0BgpNeighborConfig

## Synopsis

Create or update a BGP neighbor config for NSX Tier-0 gateways

## Syntax

```powershell
 New-NsxtTier0BgpNeighborConfig [-id] <string> [-localeservices] <String> [-neighborID] <String>
 [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-NsxtTier0BgpNeighborConfig` cmdlet configures or updates the BGP neighbor config for NSX Tier-0 gateways.

## Examples

### Example 1

```powershell
New-NsxtTier0BgpNeighborConfig -id <string> -localeservices $localeservices -neighborID $neighborID -json $bgpneighborJson
```

This example configures or updates the BGP neighbor config for NSX Tier-0 gateways.

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

### -localeservices

The name of the locale services.

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

### -neighborID

The id of the BGP neighbor.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -json

The JSON configuration for the BGP neighbor.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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
