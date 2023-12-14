# Remove-vRSLCMLockerLicense

## Synopsis

Delete a License based on vmid

## Syntax

```powershell
Remove-vRSLCMLockerLicense [-vmid] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMLockerLicense` cmdlet deletes a license from the locker.

## Examples

### Example 1

```powershell
Remove-vRSLCMLockerLicense -vmid
```

This example deletes the license with the vmid.

## Parameters

### -vmid

The vmid of the license.

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
