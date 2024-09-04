# Remove-NsxtGlobalManagerTier1LocaleServices

## Synopsis

Delete the locale service of Tier 1 Gateway from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerTier1LocaleServices [-tier1GatewayId] <String> [-localeServiceId] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerTier1LocaleServices` cmdlet deletes the locale service of Tier 1 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerTier1LocaleServices -tier1GatewayId xint-m01-ec01-t1-gw01 -localeServiceId sfo-m01
```

This example deletes the locale service of Tier 1 Gateway from the NSX Global Manager.

## Parameters

### -tier1GatewayId

The ID of the NSX Tier1 Gateway where the local service is to be deleted.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
