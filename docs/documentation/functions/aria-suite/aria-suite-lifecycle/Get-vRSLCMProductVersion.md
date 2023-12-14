# Get-vRSLCMProductVersion

## Synopsis

Get supported version for a product

## Syntax

```powershell
Get-vRSLCMProductVersion [[-productId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductVersion` cmdlet retrieves supported versions of a product from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMProductVersion -productId vra
```

This example retrieves the supported versions for VMware Aria Automation.

## Parameters

### -productId

The product to get the supported versions for.

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

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
