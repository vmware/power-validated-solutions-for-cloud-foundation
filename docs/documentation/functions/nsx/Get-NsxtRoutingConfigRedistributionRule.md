# Get-NsxtRoutingConfigRedistributionRule

## Synopsis

Get configured route redistribution

## Syntax

```powershell
Get-NsxtRoutingConfigRedistributionRule [-logicalRouterId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtRoutingConfigRedistributionRule` cmdlet returns all the route redistribution rules for the specified
logical router.

## Examples

### Example 1

```powershell
Get-NsxtRoutingConfigRedistributionRule -logicalRouterId 
```

This example gets the route redistribution rule details for the supplied logical router.

## Parameters

### -logicalRouterId

The id of the logical router.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
