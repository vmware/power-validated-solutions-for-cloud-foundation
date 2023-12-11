
# Set-vROPSCurrency

## Synopsis

Applies the currency configuration

## Syntax

```powershell
Set-vROPSCurrency [-currency] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vROPSCurrency` cmdlet applies the currency configuration for VMware Aria Operations.
NOTE: Once applied for an instance it cannot be changed.

## Examples

### Example 1

```powershell
Set-vROPSCurrency
```

This example gets the currency configuration for VMware Aria Operations.

## Parameters

### -currency

The currency code to apply.

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
