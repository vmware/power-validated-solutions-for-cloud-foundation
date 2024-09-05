# Get-NsxtGlobalManagerTier0LocaleServices

## Synopsis

Retrieve the locale services of the Tier-0 gateway from the NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerTier0LocaleServices [-tier0GatewayId] <String> [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerTier0LocaleServices` cmdlet retrieves the locale services of the Tier-0 gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerTier0LocaleServices -tier0GatewayId "959e3558-98cc-4484-91a2-36ad6bfc5594"
```

This example retrieves the locale services of the Tier-0 gateway from the NSX Global Manager.

## Parameters

### -tier0GatewayId

The ID of the Tier 0 Gateway.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
