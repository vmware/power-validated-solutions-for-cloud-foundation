# New-TanzuKubernetesCluster

## Synopsis

Adds a Tanzu Kubernetes Cluster based on the specified YAML file.

## Syntax

```powershell
New-TanzuKubernetesCluster [-YAML] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-TanzuKubernetesCluster` cmdlet adds a Tanzu Kubernetes Cluster based on the specified YAML file.

## Examples

### Example 1

```powershell
New-TanzuKubernetesCluster -YAML .\SampleYaml\sfo-w01-tkc01-cluster.yaml
```

This example creates a Tanzu Kubernetes Cluster based on the yaml file.

## Parameters

### -YAML

The path to the YAML file.

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
