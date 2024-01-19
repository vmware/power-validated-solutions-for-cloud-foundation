# Invoke-UndoIamDeployment

## Synopsis

End-to-end removal of Identity and Access Management

## Syntax

```powershell
Invoke-UndoIamDeployment [-jsonFile] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-UndoIamDeployment` cmdlet is a single function to remove the configuration of the Identity and Access
Management for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-UndoIamDeployment -jsonFile .\iamDeploySpec.json
```

This example removes the Identity and Access Management for VMware Cloud Foundation using the JSON spec supplied.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
