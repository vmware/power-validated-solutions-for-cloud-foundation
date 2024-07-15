# Invoke-PcaDeployment

## Synopsis

End-to-end Deployment of Private Cloud Automation

## Syntax

```powershell
Invoke-PcaDeployment [-jsonFile] <String> [-certificates] <String> [-binaries] <String> [-useContentLibrary] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-PcaDeployment` cmdlet is a single function to implement the configuration of the Private Cloud Automation for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-PcaDeployment -jsonFile .\pcaDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures Private Cloud Automation using the JSON specification provided.

### Example 2

```powershell
Invoke-PcaDeployment -jsonFile .\pcaDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\" -useContentLibrary
```

This example configures Private Cloud Automation using the JSON specification provided. and using a content library for VMware Aria Suite Lifecycle

## Parameters

### -jsonFile

The path to the JSON specification file to be created.

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

### -binaries

The fully qualified path to the binaries directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -useContentLibrary

Use a vSphere Content Library to store the binaries.

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
