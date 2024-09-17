# New-NsxtGlobalManagerTier0LocaleServices

## Synopsis

Create or update locale services on the Tier-0 Gateway.

## Syntax

```powershell
New-NsxtGlobalManagerTier0LocaleServices [-tier0GatewayId] <String> [-localeServiceId] <String> [-json] <String> [<CommonParameters>]
```

## Description

The `New-NsxtGlobalManagerTier0LocaleServices` cmdlet creates or updates locale services on the Tier-0 Gateway.

## Examples

### Example 1

```powershell
New-NsxtGlobalManagerTier0LocaleServices -tier0GatewayId "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1" -localeServiceId "sfo-m01" -json $ConfigJson 
```

This example creates or updates locale services on the Tier-0 Gateway.

## Parameters

### -tier0GatewayId

The ID of the Tier-0 Gateway.

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

### -json

The JSON configuration for the Tier-0 Gateway.

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
