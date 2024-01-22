# Get-WSARoleId

## Synopsis

Get role id for role name

## Syntax

```powershell
Get-WSARoleId [-role] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSARoleId` cmdlet get the role id corresponding to the given role name.

## Examples

### Example 1

```powershell
Get-WSARoleId -role "Super Admin"
```

This retrieves the id for the Super Admin role.

## Parameters

### -role

The role name.

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
