# New-NsxtGlobalManagerTier0BgpNeighborConfig

## Synopsis

Create or update a BGP neighbor config for NSX Tier-0 gateways.

## Syntax

```powershell
New-NsxtGlobalManagerTier0BgpNeighborConfig [-tier0GatewayId] <String> [-localeServiceId] <String> [-neighborID] <String> [-json] <String> [<CommonParameters>]
```

## Description

The `New-NsxtGlobalManagerTier0BgpNeighborConfig` cmdlet creates or updates the BGP neighbor config for NSX Tier-0 gateways.

## Examples

### Example 1

```powershell
New-NsxtGlobalManagerTier0BgpNeighborConfig -tier0GatewayId "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1" -neighborID "172.27.34.10_65211" -localeServiceId "lax-m01" -json $ConfigJson
```

This example creates or updates the BGP neighbor config for NSX Tier-0 gateways.

## Parameters

### -tier0GatewayId

The ID of the Tier0 Gateway.

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

### -localeServiceId

The ID of the locale service.

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

The ID of the BGP neighbor.

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

The JSON configuration for the Tier-0 Gateway.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
