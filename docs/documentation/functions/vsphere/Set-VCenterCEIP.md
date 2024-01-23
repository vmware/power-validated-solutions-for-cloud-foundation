# Set-VCenterCEIP

## Synopsis

Enables or Disables the Customer Experience Improvement Program (CEIP) setting for vCenter Server

## Syntax

```powershell
Set-VCenterCEIP [-Enabled] [-Disabled] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VCenterCEIP` cmdlet enables or disables the CEIP setting for vCenter Server.

## Examples

### Example 1

```powershell
Set-VCenterCEIP  -Enabled
```

### Example 2

```powershell
Set-VCenterCEIP  -Disabled
```

## Parameters

### -Enabled

Enables the CEIP setting for vCenter Server.

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

### -Disabled

Disables the CEIP setting for vCenter Server.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
