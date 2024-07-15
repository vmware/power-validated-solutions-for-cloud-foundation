# New-VMOvfProduct

## Synopsis

Create a single OVF Product on a standard VM.

## Syntax

```powershell
New-VMOvfProduct [-vm] <PSObject> [-product] <PSObject> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-VMOvfProduct` cmdlet accepts an object with product details, parses it and adds it to supplied VM.

## Examples

### Example 1

```powershell
New-VMOvfProduct -vm $vm -product $productObject
```

## Parameters

### -vm

The virtual appliance to set the product on.

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

### -product

The product to set on the virtual appliance.

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
