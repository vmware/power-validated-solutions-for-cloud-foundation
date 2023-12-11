# Get-vRSLCMPSPack

## Synopsis

Get list of Product Support Packs

## Syntax

```powershell
Get-vRSLCMPSPack [-checkOnline] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMPSPack` cmdlet retrieves a list of available Product Support Packs for VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMPSPack
```

This example retrieves a list of available Product Support Packs for VMware Aria Suite Lifecycle

### Example 2

```powershell
Get-vRSLCMPSPack -checkOnline
```

This example update the manifest of available Product Support Packs online for VMware Aria Suite Lifecycle.

## Parameters

### -checkOnline

The switch to update the manifest of available Product Support Packs online for VMware Aria Suite Lifecycle.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
