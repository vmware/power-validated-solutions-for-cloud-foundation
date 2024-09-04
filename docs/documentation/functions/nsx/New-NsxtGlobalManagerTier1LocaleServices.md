# New-NsxtGlobalManagerTier1LocaleServices

## Synopsis

Create locale services on the Teir 1 Gateway.

## Syntax

```powershell
New-NsxtGlobalManagerTier1LocaleServices [-tier1GatewayId] <String> [-json] <String> [-localeServiceId] <String> [<CommonParameters>]
```

## Description

The `New-NsxtGlobalManagerTier1LocaleServices` cmdlet creates locale services on the Teir 1 Gateway.

## Examples

### Example 1

```powershell
New-NsxtGlobalManagerTier1LocaleServices -tier1GatewayId "xint-m01-ec01-t1-gw01" -json $ConfigJson -localeServiceId "sfo-m01"
```

This example creates locale services on the Teir 1 Gateway.

## Parameters

### -tier1GatewayId

The ID of the Tier 1 Gateway.

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

### -json

The JSON configuration for the Tier 1 Gateway.

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

### -localeServiceId

The ID of the locale service.

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
