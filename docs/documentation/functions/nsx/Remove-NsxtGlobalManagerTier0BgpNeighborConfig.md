# Remove-NsxtGlobalManagerTier0BgpNeighborConfig

## Synopsis

Delete the BGP neighbor of Tier 0 Gateway from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerTier0BgpNeighborConfig [-tier0GatewayId] <String> [-localeServiceId] <String> [-neighborId] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerTier0BgpNeighborConfig` cmdlet deletes the BGP neighbor of Tier 0 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerTier0BgpNeighborConfig -tier0GatewayId "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1" -neighborID "172.27.34.10_65211" -localeServiceId "lax-m01"
```

This example deletes the BGP neighbor of Tier 0 Gateway from the NSX Global Manager.

## Parameters

### -tier0GatewayId

The ID of the NSX Tier0 Gateway.

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

### -neighborId

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
