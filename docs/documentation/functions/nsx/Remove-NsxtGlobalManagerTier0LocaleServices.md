# Remove-NsxtGlobalManagerTier0LocaleServices

## Synopsis

Delete the locale service of Tier 0 Gateway from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerTier0LocaleServices [-tier0GatewayId] <String> [-localeServiceId] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerTier0LocaleServices` cmdlet deletes the locale service of Tier 0 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerTier0LocaleServices -tier0GatewayId "lax-m01-ec01-t0-gw01" -localeServiceId "lax-m01"
```

This example deletes the locale service of Tier 0 Gateway from the NSX Global Manager.

## Parameters

### -tier0GatewayId

The ID of the NSX Tier0 Gateway where the local service is to be deleted.

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
