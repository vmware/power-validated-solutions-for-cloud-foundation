# Add-SrmProtectionGroup

## Synopsis

Adds a protection group to a Site Recovery Manager instance.

## Syntax

```powershell
Add-SrmProtectionGroup [-pgName] <String> [-vmName] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-SrmProtectionGroup` cmdlet Retrieves either a named protection group or all protection groups from a
Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Add-SrmProtectionGroup
```

This example adds a ProtectionGroup to the Site Recovery Manager instance.

## Parameters

### -pgName

The name of the protection group to add to the Site Recovery Manager instance.

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

### -vmName

The name of the virtual machine(s) to add to the protection group.
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
