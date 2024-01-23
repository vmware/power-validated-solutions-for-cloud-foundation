# Remove-TanzuKubernetesCluster

## Synopsis

Remove a Tanzu Kubernetes cluster

## Syntax

```powershell
Remove-TanzuKubernetesCluster [-cluster] <String> [-namespace] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-TanzuKubernetesCluster` cmdlet removes a Tanzu Kubernetes cluster.

## Examples

### Example 1

```powershell
Remove-TanzuKubernetesCluster -cluster sfo-w01-tkc01 -namespace sfo-w01-tkc01
```

This example removes the Tanzu Kubernetes cluster.

## Parameters

### -cluster

The name of the Tanzu Kubernetes cluster.

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

### -namespace

The name of the Namespace.

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
