# Get-SrmTask

## Synopsis

Get tasks

## Syntax

```powershell
Get-SrmTask [[-taskId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmTask` cmdlet retrieves the tasks for a Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Get-SrmTask
```

This example retrieves all the tasks from the Site Recovery Manager appliance

### Example 2

```powershell
Get-SrmTask [-taskId] <string>
```

This example retrieves a specific task based on the task ID from the Site Recovery Manager appliance.

## Parameters

### -taskId

The taskId parameter The task to retrieve.

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
