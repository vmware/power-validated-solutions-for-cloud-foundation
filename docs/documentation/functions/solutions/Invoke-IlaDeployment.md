# Invoke-IlaDeployment

## Synopsis

End-to-end Deployment of Intelligent Logging and Analytics.

## Syntax

```powershell
Invoke-IlaDeployment -jsonFile <String> -certificates <String> -binaries <String> [-useContentLibrary]
 [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-IlaDeployment` cmdlet is a single function to implement the configuration of the Intelligent Logging
and Analytics for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-IlaDeployment -jsonFile .\ilaDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures Intelligent Logging and Analytics for VMware Cloud Foundation using the JSON spec supplied

### Example 2

```powershell
Invoke-IlaDeployment -jsonFile .\ilaDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\" -useContentLibrary -contentLibrary Operations
```

This example configures Intelligent Logging and Analytics for VMware Cloud Foundation using the JSON spec supplied deploying the OVA using a vSphere Content Library

## Parameters

### -jsonFile

The path to the JSON specification file to be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -binaries

The folder containing the binaries.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -useContentLibrary

Use a vSphere Content Library to deploy the OVA.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -contentLibrary

The name of the vSphere Content Library to use.

```yaml
Type: String
Parameter Sets: (All)
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
