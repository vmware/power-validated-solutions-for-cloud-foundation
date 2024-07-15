# Get-NsxtRouteMap

## Synopsis

Get Tier-0 Gateway Route Maps

## Syntax

```powershell
Get-NsxtRouteMap [-tier0Gateway] <String> [[-name] <String>] [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtRouteMap` cmdlet retrieves the Route Maps assigned to a specified Tier-0 Gateway.

## Examples

### Example 1

```powershell
Get-NsxtRouteMap -tier0Gateway sfo-w01-ec01-t0-gw01
```

This example gets all Route Maps on the Tier-0 Gateway.

### Example 2

```powershell
Get-NsxtRouteMap -tier0Gateway sfo-w01-ec01-t0-gw01 -name sfo-w01-ec01-t0-gw01-routemap
```

This example gets a specific route map by name from the Tier-0 Gateway.

## Parameters

### -tier0Gateway

The Tier-0 Gateway name.

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

### -name

The Route Map name.

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

### -inputObject

The Tier-0 Gateway object.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
