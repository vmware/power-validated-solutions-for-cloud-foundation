# Invoke-UndoIlaDeployment

## Synopsis

End-to-end removal of Intelligent Logging and Analytics.

## Syntax

```powershell
Invoke-UndoIlaDeployment [-jsonFile] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-UndoIlaDeployment` cmdlet is a single function to remove the configuration of the Intelligent Logging
and Analytics for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-UndoIlaDeployment -jsonFile .\ilaDeploySpec.json
```

This example removes the configuration of Intelligent Logging and Analytics for VMware Cloud Foundation using the JSON specification provided.

## Parameters

### -jsonFile

The path to the JSON specification file to be used.

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
