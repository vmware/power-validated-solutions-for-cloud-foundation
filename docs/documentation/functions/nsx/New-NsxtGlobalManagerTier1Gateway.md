# New-NsxtGlobalManagerTier1Gateway

## Synopsis

Create a Teir 1 Gateway on the NSX Global Manager.

## Syntax

```powershell
New-NsxtGlobalManagerTier1Gateway [-tier1Gateway] <String> [-json] <String> [<CommonParameters>]
```

## Description

The `New-NsxtGlobalManagerTier1Gateway` cmdlet creates a Teir 1 Gateway on the NSX Global Manager.

## Examples

### Example 1

```powershell
New-NsxtGlobalManagerTier1Gateway -tier1Gateway xint-m01-ec01-t1-gw01 -json $ConfigJson
```

This example creates a new Teir 1 Gateway on the NSX Global Manager.

## Parameters

### -tier1Gateway

The name of the Tier 1 Gateway.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
