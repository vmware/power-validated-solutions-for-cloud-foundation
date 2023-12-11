# Get-vRAResourceCompute

## Synopsis

Get compute resources

## Syntax

```powershell
Get-vRAResourceCompute [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAResourceCompute` cmdlet gets a list of known compute resources from VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAResourceCompute
```

This example gets all known compute resources from VMware Aria Automation

### Example 2

```powershell
Get-vRAResourceCompute [[-id] <String>]
```

This example gets a compute resource from VMware Aria Automation by id.

## Parameters

### -id

The compute resource id to get.

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
