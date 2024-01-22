# Get-CEPWorkflow

## Synopsis

Get VMware Aria Automation Orchestrator workflows

## Syntax

### All (Default)

```powershell
Get-CEPWorkflow [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### categoryName

```powershell
Get-CEPWorkflow [-categoryName <String>] [-tag <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### categoryId

```powershell
Get-CEPWorkflow [-categoryId <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### id

```powershell
Get-CEPWorkflow [-id <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### name

```powershell
Get-CEPWorkflow [-name <String>] [-wildcard] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### category

```powershell
Get-CEPWorkflow [-tag <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### all

```powershell
Get-CEPWorkflow [-tag <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-CEPWorkflow` cmdlet returns details for VMware Aria Automation Orchestrator workflows.

## Examples

### Example 1

```powershell
Get-CEPWorkflow
```

### Example 2

```powershell
Get-CEPWorkflow -categoryName 'SSL Trust Manager'
```

### Example 3

```powershell
Get-CEPWorkflow -categoryId 3f23f186158a4869b464b7271fc216ba
```

### Example 4

```powershell
Get-CEPWorkflow -id '93a7bb21-0255-4750-9293-2437abe9d2e5'
```

### Example 5

```powershell
Get-CEPWorkflow -name 'Import a trusted certificate from a file'
```

### Example 6

```powershell
Get-CEPWorkflow -name 'Import a trusted certificate' -wildcard
```

## Parameters

### -categoryName

The name of the category to filter by.

```yaml
Type: String
Parameter Sets: categoryName
Aliases: Category

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -categoryId

The ID of the category to filter by.

```yaml
Type: String
Parameter Sets: categoryId
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -id

The ID of the workflow to filter by.

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

The name of the workflow to filter by.

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

### -wildcard

Use wildcard search for the name of the workflow.

```yaml
Type: SwitchParameter
Parameter Sets: name
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -tag

The tag to filter by.

```yaml
Type: String[]
Parameter Sets: categoryName, category, all
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
