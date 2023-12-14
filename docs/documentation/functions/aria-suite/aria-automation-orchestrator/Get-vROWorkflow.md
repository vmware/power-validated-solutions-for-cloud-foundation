# Get-vROWorkflow

## Synopsis

Get VMware Aria Automation Orchestrator workflows

## Syntax

### All (Default)

```powershell
Get-vROWorkflow [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### categoryName

```powershell
Get-vROWorkflow [-categoryName <String>] [-tag <String[]>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### categoryId

```powershell
Get-vROWorkflow [-categoryId <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### id

```powershell
Get-vROWorkflow [-id <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### name

```powershell
Get-vROWorkflow [-name <String>] [-wildcard] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### category

```powershell
Get-vROWorkflow [-tag <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### all

```powershell
Get-vROWorkflow [-tag <String[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROWorkflow` cmdlet returns details for VMware Aria Automation Orchestrator workflows.

## Examples

### Example 1

```powershell
Get-vROWorkflow
```

### Example 2

```powershell
Get-vROWorkflow -categoryName foo
```

### Example 3

```powershell
Get-vROWorkflow -categoryId 3f23f186158a4869b464b7271fc216ba
```

### Example 4

```powershell
Get-vROWorkflow -id '3f23f186-158a-4869-b464-b7271fc216ba'
```

### Example 5

```powershell
Get-vROWorkflow -name 'foo'
```

### Example 6

```powershell
Get-vROWorkflow -name 'Add' -wildcard
```

### Example 7

```powershell
Get-vROWorkflow -tag 'foo'
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

The ID of the workflow to retrieve.

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

The name of the workflow to retrieve.

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

Use wildcard matching for the name parameter.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
