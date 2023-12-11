# Remove-vROPSCredential

## Synopsis

Delete a credential

## Syntax

```powershell
Remove-vROPSCredential [-credentialId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vROPSCredential` cmdlet deletes a credential from VMware Aria Operations.

## Examples

### Example 1

```powershell
Remove-vROPSCredential [-credentialId] <String>
```

This example deletes a credential.

## Parameters

### -credentialId

The ID of the credential to delete.

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
