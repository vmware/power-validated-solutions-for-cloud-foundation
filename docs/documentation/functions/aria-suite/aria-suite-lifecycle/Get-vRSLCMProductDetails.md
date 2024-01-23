# Get-vRSLCMProductDetails

## Synopsis

Get the product details from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Get-vRSLCMProductDetails [-productid] <String> [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductDetails` cmdlet gets the product details for a specified product in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMProductDetails -productid vrli
```

This example gets all environments in VMware Aria Suite Lifecycle.

## Parameters

### -productid

The product ID of the product to get the details for.

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
