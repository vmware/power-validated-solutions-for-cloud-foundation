# New-VcLicense

## Synopsis

Add a license to vCenter Server

## Syntax

```powershell
New-VcLicense [-licenseKey] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-VcLicense` cmdlet adds a license to vCenter Server.

## Examples

### Example 1

```powershell
New-VcLicense [-licenseKey] <String> 
```

This example shows how to add a license to vCenter Server.

## Parameters

### -licenseKey

The license key.

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
