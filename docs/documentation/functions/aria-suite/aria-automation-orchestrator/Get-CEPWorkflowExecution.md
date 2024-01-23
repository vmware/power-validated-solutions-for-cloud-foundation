# Get-CEPWorkflowExecution

## Synopsis

Retrieve VMware Aria Automation Orchestrator Workflow Status

## Syntax

### A (Default)

```powershell
Get-CEPWorkflowExecution [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### id

```powershell
Get-CEPWorkflowExecution [-id <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### name

```powershell
Get-CEPWorkflowExecution [-name <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-CEPWorkflowExecution` cmdlet returns the execution status for a VMware Aria Automation Orchestrator workflow.

## Examples

### Example 1

```powershell
Get-CEPWorkflowExecution -id 93a7bb21-0255-4750-9293-2437abe9d2e5
```

The example retrieves the status for all workflows based on workflow ID

### Example 2

```powershell
Get-CEPWorkflowExecution -name 'Import a trusted certificate from a file'
```

The example retrieves the status for all workflows based on workflow name

### Example 3

```powershell
Get-CEPWorkflowExecution -name 'Import a trusted certificate from a file' -executionId 397a7b99-cdd0-427e-8fa1-2ff9cdd96fae
```

## Parameters

### -id

The VMware Aria Automation Orchestrator workflow ID.

```yaml
Type: String
Parameter Sets: id
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -name

The VMware Aria Automation Orchestrator workflow name.

```yaml
Type: String
Parameter Sets: name
Aliases:

Required: False
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
