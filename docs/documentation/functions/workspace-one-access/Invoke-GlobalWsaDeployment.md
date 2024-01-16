# Invoke-GlobalWsaDeployment

## Synopsis

End-to-end Deployment of Global Workspace ONE Access

## Syntax

```powershell
Invoke-GlobalWsaDeployment [-jsonFile] <String> [-workbook] <String> [-certificates] <String>
 [-binaries] <String> [-useContentLibrary] [-standard] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Invoke-GlobalWsaDeployment` cmdlet is a single function to deploy and configure Global Workspace ONE Access.

## Examples

### Example 1

```powershell
Invoke-GlobalWsaDeployment -jsonFile .\aslcmDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example deploys and configures Global Workspace ONE Access using JSON spec supplied

### Example 2

```powershell
Invoke-GlobalWsaDeployment -jsonFile .\aslcmDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\" -useContentLibrary
```

This example deploys and configures Global Workspace ONE Access using JSON spec supplied and using a content library for VMware Aria Suite Lifecycle

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

### -workbook

The path to the Planning and Preparation Workbook (.xlsx) file.

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

### -certificates

The fully qualified path to the certificates directory.

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

### -binaries

The fully qualified path to the binaries directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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

### -standard

Deploy Global Workspace ONE Access in standard mode

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
