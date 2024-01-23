# Install-vRSLCMPSPack

## Synopsis

Install a Product Support Pack

## Syntax

```powershell
Install-vRSLCMPSPack [[-pspackId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Install-vRSLCMPSPack` cmdlet installs a Product Support Pack on VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Install-vRSLCMPSPack -pspackId 8b96b2fa-ec34-491c-a7aa-ef81103f089f
```

This example installs a Product Support Pack on VMware Aria Suite Lifecycle.

## Parameters

### -pspackId

The Product Support Pack ID to install on VMware Aria Suite Lifecycle.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
