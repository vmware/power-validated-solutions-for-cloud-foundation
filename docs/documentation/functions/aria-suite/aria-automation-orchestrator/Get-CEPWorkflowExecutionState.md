# Get-CEPWorkflowExecutionState

## Synopsis

Get a VMware Aria Automation Orchestrator Workflow execution state

## Syntax

```powershell
Get-CEPWorkflowExecutionState [-workflowId] <String> [-executionId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-CEPWorkflowExecutionState` cmdlet returns the status of VMware Aria Automation Orchestrator workflow
execution runs.

## Examples

### Example 1

```powershell
Get-CEPWorkflowExecutionState -workflowId 93a7bb21-0255-4750-9293-2437abe9d2e5 -executionId 0f37aa69-b95c-4c80-8b63-b8e5085aa3fd
```

The examples returns the execution status of a workflow based on the Workflow ID and Execution ID.

## Parameters

### -workflowId

The VMware Aria Automation Orchestrator workflow ID.

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

### -executionId

The VMware Aria Automation Orchestrator workflow execution ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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
