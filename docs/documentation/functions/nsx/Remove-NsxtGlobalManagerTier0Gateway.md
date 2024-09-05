# Remove-NsxtGlobalManagerTier0Gateway

## Synopsis

Delete the Tier 0 Gateway from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerTier0Gateway [-tier0GatewayId] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerTier0Gateway` cmdlet deletes the Tier 0 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powersehll
Remove-NsxtGlobalManagerTier0Gateway -tier0GatewayId "lax-m01-ec01-t0-gw01"
```

This example deletes the Tier 0 Gateway from the NSX Global Manager.

## Parameters

### -tier0GatewayId

The ID of the NSX Tier0 Gateway to be deleted.

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
