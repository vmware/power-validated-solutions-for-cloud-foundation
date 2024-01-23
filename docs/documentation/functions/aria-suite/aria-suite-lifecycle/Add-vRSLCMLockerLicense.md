# Add-vRSLCMLockerLicense

## Synopsis

Creates a new license in the locker

## Syntax

```powershell
Add-vRSLCMLockerLicense [-alias] <String> [-license] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMLockerLicense` cmdlet adds as new license to the locker.

## Examples

### Example 1

```powershell
Add-vRSLCMLockerLicense -alias "VMware Aria Operations" -license "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
```

This example adds a license to the locker.

## Parameters

### -alias

The alias of the license.

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

### -license

The license of the license.

```yaml
Type: String
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
