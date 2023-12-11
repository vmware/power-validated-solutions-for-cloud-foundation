# Show-PowerValidatedSolutionsOutput

## Synopsis

Show PowerValidatedSolutions Output.

## Syntax

```powershell
Show-PowerValidatedSolutionsOutput [-message] <String> [[-type] <String>] [-skipnewline]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Show-PowerValidatedSolutionsOutput` cmdlet show PowerValidatedSolutions Output.

## Examples

### Example 1

```powershell
Show-PowerValidatedSolutionsOutput -message <String> -type <String>
```

## Parameters

### -message

The Message to be output on session.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -skipnewline

Create a skip to new line.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -type

Type of message.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: INFO, ERROR, WARNING, EXCEPTION, ADVISORY, NOTE, QUESTION, WAIT

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
