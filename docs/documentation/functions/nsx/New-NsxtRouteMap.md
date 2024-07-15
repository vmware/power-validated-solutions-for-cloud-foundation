# New-NsxtRouteMap

## Synopsis

Creates a Route Map on a specified Tier-0 Gateway

## Syntax

```powershell
New-NsxtRouteMap [[-Name] <String>] [[-Tier0Gateway] <String>] [[-PrefixList] <String>] [[-Action] <String>] [[-Json] <String>] [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-NsxtRouteMap` cmdlet creates a Route Map on a specified Tier-0 Gateway.

## Examples

### Example 1

```powershell
New-NsxtRouteMap -Name sfo-w01-cl01-route-map -Tier0Gateway sfo-w01-ec01-t0-gw01 -PrefixList sfo-w01-ec01-prefix-list
```

This example creates a new Route Map on a Tier-0 Gateway.

### Example 2

```powershell
Net-NsxtTier0Gateway sfo-w01-ec01-t0-gw01 | Get-NsxtPrefixList -Name sfo-w01-ec01-prefix-list | New-NsxtRouteMap -Name sfo-w01-cl01-route-map
```

This example creates a new Route Map on a Tier-0 Gateway.

## Parameters

### -Name

The Route Map name.

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

### -Tier0Gateway

The Tier-0 Gateway name.

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

### -PrefixList

The IP Prefix List name.

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

### -Action

The action (PERMIT or DENY).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Json

The JSON body.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -inputObject

The Tier-0 Gateway object.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByValue)
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
