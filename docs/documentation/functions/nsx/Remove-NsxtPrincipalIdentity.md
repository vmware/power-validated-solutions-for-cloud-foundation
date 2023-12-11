# Remove-NsxtPrincipalIdentity

## Synopsis

Delete an NSX Principal Identity

## Syntax

```powershell
Remove-NsxtPrincipalIdentity [-principalId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-NsxtPrincipalIdentity` cmdlet deletes an NSX Principal Identity.

## Examples

### Example 1

```powershell
Remove-NsxtPrincipalIdentity -principalId <String>
```

This example deletes an NSX Principal Identity.

## Parameters

### -principalId

The NSX Principal Identity ID.

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
