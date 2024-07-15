# Invoke-IamDeployment

## Synopsis

End-to-end Deployment of Identity and Access Management

## Syntax

```powershell
Invoke-IamDeployment [-jsonFile] <String> [-certificates] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-IamDeployment` cmdlet is a single function to implement the configuration of the Identity and Access Management for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-IamDeployment -jsonFile .\iamDeploySpec.json -certificates ".\certificates\"
```

This example configures Identity and Access Management for VMware Cloud Foundation using the JSON spec supplied.

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

### -certificates

The path to the directory containing the certificates to be used.

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
