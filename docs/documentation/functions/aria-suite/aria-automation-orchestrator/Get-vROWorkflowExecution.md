# Get-vROWorkflowExecution

## Synopsis

Get VMware Aria Automation Orchestrator workflow executions

## Syntax

### Name (Default)

```powershell
Get-vROWorkflowExecution [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### id

```powershell
Get-vROWorkflowExecution -id <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### name

```powershell
Get-vROWorkflowExecution -name <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROWorkflowExecution` cmdlet returns the execution runs for a VMware Aria Automation Orchestrator workflow.

## Examples

### Example 1

```powershell
Get-vROWorkflowExecution -id 697c8755-15c0-44fc-b409-5c562cf2984e
```

### Example 2

```powershell
Get-vROWorkflowExecution -name 'foo'
```

### Example 3

```powershell
Get-vROWorkflow -name 'foo' | Get-vROWorkflowExecution
```

## Parameters

### -id

The ID of the workflow.

```yaml
Type: String
Parameter Sets: id
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -name

The name of the workflow.

```yaml
Type: String
Parameter Sets: name
Aliases:

Required: True
Position: Named
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
