# Remove-SrmRecoveryPlan

## Synopsis

Removes a named recovery plan from a Site Recovery Manager instance.

## Syntax

```powershell
Remove-SrmRecoveryPlan [-rpName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-SrmRecoveryPlan` cmdlet removes a named recovery plan from a Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Remove-SrmRecoveryPlan -rpName xint-vrops01-rp
```

This example removes the recovery plan xint-vrops01-rp from the Site Recovery Manager instance.

## Parameters

### -rpName

The name of the recovery plan to remove from the Site Recovery Manager instance.

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
