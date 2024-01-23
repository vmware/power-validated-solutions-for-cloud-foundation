# Invoke-vROWorkflow

## Synopsis

Invoke a VMware Aria Automation Orchestrator workflow

## Syntax

### A (Default)

```powershell
Invoke-vROWorkflow -id <String> [-parameterName <String>] [-parameterValue <String>] [-parameterType <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### B

```powershell
Invoke-vROWorkflow -id <String> [-parameters <PSObject[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### C

```powershell
Invoke-vROWorkflow [-parameterName <String>] [-parameterValue <String>] [-parameterType <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### D

```powershell
Invoke-vROWorkflow [-parameters <PSObject[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-vROWorkflow` cmdlet starts a VMware Aria Automation Orchestrator workflow.

## Examples

### Example 1

```powershell
Invoke-vROWorkflow -ID 3f23f186-158a-4869-b464-b7271fc216ba
```

### Example 2

```powershell
Invoke-vROWorkflow -ID 3f23f186-158a-4869-b464-b7271fc216ba -parameterName 'text' -parameterValue 'foo' -parameterType 'string'
```

### Example 3

```powershell
$Parameters =  @"
{"parameters":
    [
        {
            "value": {"string":{ "value": "bar"}},
            "type": "string",
            "name": "foo",
            "scope": "local"
        },
        {
            "value": {"number":{ "value": 2022}},
            "type": "number",
            "name": "year",
            "scope": "local"
        }
    ]
}
"@
```

Invoke-vROWorkflow -id 3f23f186-158a-4869-b464-b7271fc216ba -parameters ($parameters | ConvertFrom-Json).parameters

### Example 4

```powershell
$param1 = New-vROParameterDefinition -name 'foo' -value 'bar' -type string -scope LOCAL
Invoke-vROWorkflow -id 3f23f186-158a-4869-b464-b7271fc216ba -parameters $param1
```

### Example 5

```powershell
Get-vROWorkflow -name 'foo' | Invoke-vROWorkflow -parameterName 'foo' -parameterValue 'bar' -parameterType string
```

## Parameters

### -id

The ID of the workflow to invoke.

```yaml
Type: String
Parameter Sets: A
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: B
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -parameterName

The name of the parameter.

```yaml
Type: String
Parameter Sets: A, C
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -parameterValue

The value of the parameter.

```yaml
Type: String
Parameter Sets: A, C
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -parameterType

The type of the parameter.

```yaml
Type: String
Parameter Sets: A, C
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -parameters

An array of parameters to pass to the workflow.

```yaml
Type: PSObject[]
Parameter Sets: B, D
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
