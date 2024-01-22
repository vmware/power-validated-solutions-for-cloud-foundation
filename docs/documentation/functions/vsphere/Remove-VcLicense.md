# Remove-VcLicense

## Synopsis

Remove a license from vCenter Server

## Syntax

```powershell
Remove-VcLicense [-licenseKey] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-VcLicense` cmdlet removes a license from vCenter Server.

## Examples

### Example 1

```powershell
Remove-VcLicense -licenseKey <String>
```

This example shows how to remove a license from vCenter Server.

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
