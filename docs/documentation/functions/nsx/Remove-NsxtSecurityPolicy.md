# Remove-NsxtSecurityPolicy

## Synopsis

Remove a security policy

## Syntax

```powershell
Remove-NsxtSecurityPolicy [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-NsxtSecurityPolicy` cmdlet removes a security policy.

## Examples

### Example 1

```powershell
Remove-NsxtSecurityPolicy -id <String>
```

This example removes the specified security policy.

## Parameters

### -id

The id of the security policy.

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
