# Get-vROPSSolution

## Synopsis

Get list of solutions

## Syntax

```powershell
Get-vROPSSolution [[-solutionId] <String>] [-adapterKind] [-license] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSSolution` cmdlet gets a list of solutions in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSSolution
```

This example gets a list of all solutions

### Example 2

```powershell
Get-vROPSSolution -solutionId "vSphere"
```

This example gets a list of all solutions.

## Parameters

### -solutionId

The ID of the solution to get details for.

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

### -adapterKind

The ID of the solution to get details for.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -license

The ID of the solution to get details for.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
