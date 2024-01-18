# Get-SrmRecoveryPlan

## Synopsis

Retrieves either a named recovery plan or all recovery plans from a Site Recovery Manager instance.

## Syntax

```powershell
Get-SrmRecoveryPlan [[-rpName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmRecoveryPlan` cmdlet retrieves either a named recovery plan or all recovery plans from a Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Get-SrmRecoveryPlan
```

This example retrieves all recovery plans from a Site Recovery Manager instance.

## Parameters

### -rpName

The name of the recovery plan to retrieve from the Site Recovery Manager instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
