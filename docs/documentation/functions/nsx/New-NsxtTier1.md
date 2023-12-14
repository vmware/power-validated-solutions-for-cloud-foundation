# New-NsxtTier1

## Synopsis

Creates a Tier 1 Gateway

## Syntax

```powershell
New-NsxtTier1 [-tier1Gateway] <String> [-json] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `New-NsxtTier1` cmdlet creates a Teir 1 Gateway.

## Examples

### Example 1

```powershell
New-NsxtTier1 -tier1Gateway sfo-w01-ec01-t0-lb01 -json $ConfigJson

```

This example creates a new Tier 1 Gateway.

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
