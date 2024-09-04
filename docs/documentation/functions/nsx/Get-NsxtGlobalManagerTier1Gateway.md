# Get-NsxtGlobalManagerTier1Gateway

## Synopsis

Retrieve a list of Tier-1 gateways from the NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerTier1Gateway [[-id] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerTier1Gateway` cmdlet retrieves a list of Tier-1 gateways from the NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerTier1Gateway 
```

This example retrieves a list of Tier-1 gateways from the NSX Global Manager.

### Example 2

```powershell
Get-NsxtGlobalManagerTier1Gateway -id xint-m01-ec01-t1-gw01
```

This example retrieves a list of Tier-1 gateways from the NSX Global Manager.

## Parameters

### -id

The ID of the Tier-1 Gateway.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
