# Invoke-IomDeployment

## Synopsis

End-to-end Deployment of Intelligent Operations and Management.

## Syntax

```powershell
Invoke-IomDeployment -jsonFile <String> -certificates <String> -binaries <String> [-useContentLibrary] [-contentLibrary <String>] [-nested] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-IomDeployment` cmdlet is a single function to implement the configuration of the Intelligent Operations and Management for VMware Cloud Foundation validated solution.

## Examples

### Example 1

```powershell
Invoke-IomDeployment -jsonFile .\iomDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures Intelligent Operations and Management for VMware Cloud Foundation using the JSON spec supplied

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

The fully qualified path to the certificates directory.

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

The fully qualified path to the binaries directory.

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

### -nested

Deploy Intelligent Operations and Management for VMware Cloud Foundation in a nested configuration.

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
