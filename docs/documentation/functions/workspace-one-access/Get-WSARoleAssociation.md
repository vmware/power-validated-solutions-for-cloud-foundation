# Get-WSARoleAssociation

## Synopsis

Get associations for the given Role Id

## Syntax

```powershell
Get-WSARoleAssociation [-roleId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSARoleAssociation` get details of associations for the given Role Id.
This has details of the groups associated with a role.

## Examples

### Example 1

```powershell
Get-WSARoleAssociation -roleId "1d0b09a1-8744-4f85-8c4f-ac104e586010"
```

## Parameters

### -roleId

The role id
This example retrieves the associations based on the role Id provided.

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
