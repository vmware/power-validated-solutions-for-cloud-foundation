# Get-vRAOrganizationDisplayName

## Synopsis

Get the organization display name

## Syntax

```powershell
Get-vRAOrganizationDisplayName [-orgId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAOrganizationDisplayName` cmdlet gets the organization display name.

## Examples

### Example 1

```powershell
Get-vRAOrganizationDisplayName [-orgId] <String> 
```

This example gets organization display name for the organization Id provided.

## Parameters

### -orgId

The organization Id to get the display name for.

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
