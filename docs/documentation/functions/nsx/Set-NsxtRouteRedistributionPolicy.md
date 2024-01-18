# Set-NsxtRouteRedistributionPolicy

## Synopsis

Set the route redistriution policy for a Tier 0 Gateway

## Syntax

```powershell
Set-NsxtRouteRedistributionPolicy [[-tier0Gateway] <String>] [[-routeMap] <String>]
 [[-removeRouteMap] <Boolean>] [-inputObject] <PSObject> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtRouteRedistributionPolicy` cmdlet sets the route redistriution policy for a Tier 0 Gateway.

## Examples

### Example 1

```powershell
Get-NsxtRouteRedistributionPolicy -tier0Gateway "sfo-w01-ec01-t0-gw01" | Set-NsxtRouteRedistributionPolicy -RouteMap "sfo-w01-ec01-t0-gw01-routemap"
```

This example sets the RouteMap "sfo-w01-ec01-t0-gw01-routemap" on the route redistribution policy for Tier-0 Gateway "sfo-w01-t0-ec01-t0-gw01".

## Parameters

### -tier0Gateway

The Tier-0 Gateway name.

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

### -routeMap

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

### -removeRouteMap

Remove the Route Map from the route redistribution policy.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -inputObject

The Tier-0 Gateway object.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
