# Update-vROPSUserAccount

## Synopsis

Updates a user account.

## Syntax

```powershell
Update-vROPSUserAccount [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vROPSUserAccount` cmdlet updates a user account in VMware Aria Operations.

## Examples

### Example 1

```powershell
Update-vROPSUserAccount -id <string>
```

This example updates a user account in VMware Aria Operations.

## Parameters

### -id

The ID of the user account to update.

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
