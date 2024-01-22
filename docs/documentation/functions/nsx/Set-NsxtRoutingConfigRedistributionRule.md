# Set-NsxtRoutingConfigRedistributionRule

## Synopsis

Set redistribution rule

## Syntax

```powershell
Set-NsxtRoutingConfigRedistributionRule [-logicalRouterId] <String> [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtRoutingConfigRedistributionRule` cmdlet configures the route redistribution rules for the specified
logical router.

## Examples

### Example 1

```powershell
Set-NsxtRoutingConfigRedistributionRule -logicalRouterId <String> -json <file>
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

### -json

The JSON configuration for the route redistribution rule.

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
