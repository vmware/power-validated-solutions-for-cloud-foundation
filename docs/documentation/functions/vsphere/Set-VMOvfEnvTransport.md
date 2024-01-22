# Set-VMOvfEnvTransport

## Synopsis

Sets the Environment Transport setting for OVF properties

## Syntax

```powershell
Set-VMOvfEnvTransport [-vm] <PSObject> [-transport] <PSObject> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

Accepts a object with Environment Transport details and assigns it to the supplied VM.

## Examples

### Example 1

```powershell
Set-VMOvfEnvTransport -vm $vm -transport $transportObject
```

## Parameters

### -vm

The virtual appliance to set the Environment Transport on.

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

### -transport

The Environment Transport to set on the virtual appliance.

```yaml
Type: PSObject
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
