# Get-NsxtTransportZone

## Synopsis

Get a list of Transport Zones

## Syntax

```powershell
Get-NsxtTransportZone [[-name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTransportZone` cmdlet retrieves a list of Transport Zones.

## Examples

### Example 1

```powershell
Get-NsxtTransportZone
```

This example gets all Transport Zones

### Example 2

```powershell
Get-NsxtTransportZone -name overlay-tz-sfo-w01-nsx01.sfo.rainpole.io
```

This example gets the Transport Zone with the name "overlay-tz-sfo-w01-nsx01.sfo.rainpole.io".

## Parameters

### -name

The Transport Zone name.

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
