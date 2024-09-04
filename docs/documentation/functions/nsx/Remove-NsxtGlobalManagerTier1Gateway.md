# Remove-NsxtGlobalManagerTier1Gateway

## Synopssi

Delete the Tier 1 Gateway from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerTier1Gateway [-tier1GatewayId] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerTier1Gateway` cmdlet deletes the Tier 1 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerTier1Gateway -tier1GatewayId xint-m01-ec01-t1-gw01
```

This example deletes the Tier 1 Gateway from the NSX Global Manager.

## Parameters

### -tier1GatewayId

The ID of the NSX Tier1 Gateway to be deleted.

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
