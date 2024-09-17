# Get-NsxtGlobalManagerTier0ServiceInterface

## Synopsis

Retrieve the list of configured service interfaces from the Tier-0 Gateway.

## Syntax

```powershell
Get-NsxtGlobalManagerTier0ServiceInterface [-tier0GatewayId] <String> [-localeServiceId] <String> [[-interfaceId] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerTier0ServiceInterface` cmdlet retrieves the list of configured service interfaces from the Tier-0 Gateway.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerTier0ServiceInterface -tier0GatewayId "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1" -localeServiceId "lax-m01"
```

This example retrieves the list of configured service interfaces from the Tier-0 Gateway.

### Example 2

```powershell
Get-NsxtGlobalManagerTier0ServiceInterface -tier0GatewayId "92a3a3b4-a1d1-48a9-8190-dca8e44c18c1" -localeServiceId "lax-m01" -interfaceId "lax-m01-r01-en01_901e6f07-d502-46fd-b71e-e6c27358e905"
```

This example retrieves the list of configured service interfaces from the Tier-0 Gateway.

## Parameters

### -tier0GatewayId

The ID of the NSX Tier0 Gateway where the interface is to be deleted.

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

### -interfaceId

The ID of the interface.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
