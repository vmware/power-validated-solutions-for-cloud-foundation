# Get-VMOvfProperty

## Synopsis

Get OVF properties of a virtual appliance.

## Syntax

```powershell
Get-VMOvfProperty [-vm] <PSObject> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VMOvfProperty` cmdlet returns OVF properties of a virtual appliance.

## Examples

### Example 1

```powershell
Get-VMOvfProperty -vm (Get-VM -Name xreg-wsa01a)
```

This example returns an object that contains a full list of OVF properties for xreg-wsa01a.

## Parameters

### -vm

The virtual appliance to get the OVF properties from.

```yaml
Type: PSObject
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
