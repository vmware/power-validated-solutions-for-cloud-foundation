# Get-NsxtGlobalManagerTier0Gateway

## Synopsis

Retrieve a list of Tier-0 gateways from the NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerTier0Gateway [[-id] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerTier0Gateway` cmdlet retrieves a list of Tier-0 gateways from the NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerTier0Gateway 
```

This example retrieves a list of Tier-0 gateways from the NSX Global Manager.

### Example 2

```powershell
Get-NsxtGlobalManagerTier0Gateway -id "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1"
```

This example retrieves a list of Tier-0 gateways from the NSX Global Manager.

## Parameters

### -id

The ID of the Tier-0 Gateway.

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
