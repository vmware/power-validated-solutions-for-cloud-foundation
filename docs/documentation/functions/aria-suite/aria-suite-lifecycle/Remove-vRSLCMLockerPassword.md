# Remove-vRSLCMLockerPassword

## Synopsis

Delete a password based on vmid

## Syntax

```powershell
Remove-vRSLCMLockerPassword [-vmid] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMLockerPassword` cmdlet deletes a password from the locker.

## Examples

### Example 1

```powershell
Remove-vRSLCMLockerPassword -vmid
```

This example delets the password with the vmid`.

## Parameters

### -vmid

The vmid of the password.

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
