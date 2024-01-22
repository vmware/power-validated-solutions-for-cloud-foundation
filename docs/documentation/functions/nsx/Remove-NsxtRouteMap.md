# Remove-NsxtRouteMap

## Synopsis

Remove a Route Map from a specified Tier-0 Gateway

## Syntax

```powershell
Remove-NsxtRouteMap [[-name] <String>] [[-tier0Gateway] <String>] [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-NsxtRouteMap` cmdlet removes a Route Map attached to a specified Tier-0 Gateway.

## Examples

### Example 1

```powershell
Remove-NsxtRouteMap -name sfo-w01-ec01-t0-gw01-routemap -tier0Gateway sfo-w01-ec01-t0-gw01
```

This example removes the Route Map sfo-w01-ec01-t0-gw01-routemap from Tier-0 Gateway sfo-w01-ec01-t0-gw01.

## Parameters

### -name

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

### -tier0Gateway

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
