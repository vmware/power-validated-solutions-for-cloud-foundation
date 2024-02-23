# Add-SrmRecoveryPlan

## Synopsis

Adds a recovery plan to a Site Recovery Manager instance.

## Syntax

``` powershell
Add-SrmRecoveryPlan [-rpName] <String> [-pgName] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-SrmRecoveryPlan` cmdlet adds a recovery plan to a Site Recovery Manager instance.

## Examples

### Example 1

``` powershell
Add-SrmRecoveryPlan -rpName xint-vrops01-rp -pgName xint-vrops01-pg
```

This example adds recovery plan xint-vrops01-rp to a Site Recovery Manager instance.

## Parameters

### -rpName

The name of the recovery plan to retrieve from the Site Recovery Manager instance.

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

### -pgName

The name of the protection group(s) to add to the recovery plan.
Must be presented as an array.

```yaml
Type: Array
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
