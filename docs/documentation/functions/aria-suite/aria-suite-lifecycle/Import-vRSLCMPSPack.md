# Import-vRSLCMPSPack

## Synopsis

Import a Product Support Pack.

## Syntax

```powershell
Import-vRSLCMPSPack [[-psPackFile] <String>] [<CommonParameters>]
```

## Description

The `Import-vRSLCMPSPack` cmdlet imports a Product Support Pack into VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Import-vRSLCMPSPack -psPackFile vrlcm-8.14.0-PSPACK8.pspak
```

This example imports a Product Support Pack into VMware Aria Suite Lifecycle.

## Parameters

### -psPackFile

The Product Support Pack to import.

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

## Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
