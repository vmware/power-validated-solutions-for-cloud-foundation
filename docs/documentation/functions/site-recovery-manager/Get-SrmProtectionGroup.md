# Get-SrmProtectionGroup

## Synopsis

Retrieves either a named protection group or all protection groups from a Site Recovery Manager instance using the
REST API.

## Syntax

```powershell
Get-SrmProtectionGroup [[-pgName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmProtectionGroup` cmdlet retrieves either a named protection group or all protection groups from a
Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Get-SrmProtectionGroup
```

This example retrieves all protection groups from a Site Recovery Manager instance.

## Parameters

### -pgName

The name of the protection group to retrieve from the Site Recovery Manager instance.

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
