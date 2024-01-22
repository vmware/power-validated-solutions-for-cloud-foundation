# Get-NsxtTier0Gateway

## Synopsis

Get a list of Tier 0 Gateways

## Syntax

```powershell
Get-NsxtTier0Gateway [[-name] <String>] [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTier0` cmdlet retrieves a list of Tier 0 Gateways.

## Examples

### Example 1

```powershell
Get-NsxtTier0Gateway
```

This example returns all Tier 0 Gateways

### Example 2

```powershell
Get-NsxtTier0Gateway -name sfo-w01-ec01-t0-gw01
```

This example returns the Tier 0 Gateway named sfo-w01-ec01-t0-gw01

### Example 3

```powershell
Get-NsxtTier0Gateway -id 84a6c7a5-9fe8-4446-8684-814663399584
```

This example returns the Tier 0 Gateway based on its id.

## Parameters

### -name

The Tier 0 Gateway name.

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

### -id

The Tier 0 Gateway id.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
