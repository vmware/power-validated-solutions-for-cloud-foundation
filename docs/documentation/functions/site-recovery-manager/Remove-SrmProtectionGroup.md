# Remove-SrmProtectionGroup

## Synopsis

Removes a protection group from a Site Recovery Manager instance.

## Syntax

```powershell
Remove-SrmProtectionGroup [-pgName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-SrmProtectionGroup` cmdlet removes a named protection group from a Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Remove-SrmProtectionGroup -pgName xint-vrops01
```

This example removes the protection group xint-vrops01 from the Site Recovery Manager instance.

## Parameters

### -pgName

The name of the protection group to remove from the Site Recovery Manager instance.

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
