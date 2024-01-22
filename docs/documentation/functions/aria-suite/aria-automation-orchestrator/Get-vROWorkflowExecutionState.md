# Get-vROWorkflowExecutionState

## Synopsis

Get VMware Aria Automation Orchestrator workflow execution state

## Syntax

```powershell
Get-vROWorkflowExecutionState [-executionStateRef] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROWorkflowExecutionState` cmdlet returns the status of VMware Aria Automation Orchestrator workflow execution runs.

## Examples

### Example 1

```powershell
Get-vROWorkflowExecutionState -executionStateRef '/vco/api/workflows/697c8755-15c0-44fc-b409-5c562cf2984e/executions/cda43353730b4f8ba1815979ef8a932a'
```

### Example 2

```powershell
Get-vROWorkflowExecution -id 697c8755-15c0-44fc-b409-5c562cf2984e | Select-Object -last 1 | Get-vROWorkflowExecutionState
```

## Parameters

### -executionStateRef

The execution state reference of the workflow execution.

```yaml
Type: String
Parameter Sets: (All)
Aliases: execution

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
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
