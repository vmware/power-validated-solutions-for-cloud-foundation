# Remove-vRACloudAccount

## Synopsis

Remove a cloud account

## Syntax

```powershell
Remove-vRACloudAccount [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRACloudAccount` cmdlet removes a cloud account within the current organization.

## Examples

### Example 1

```powershell
Remove-vRACloudAccount -id
```

This example removes the cloud account with the ID within the current organization.

## Parameters

### -id

The ID of the cloud account to remove.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
