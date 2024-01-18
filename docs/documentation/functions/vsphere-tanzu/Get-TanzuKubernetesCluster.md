# Get-TanzuKubernetesCluster

## Synopsis

Retrieves a Tanzu Kubernetes Cluster

## Syntax

```powershell
Get-TanzuKubernetesCluster [[-namespace] <String>] [[-tkc] <String>] [-detail] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-TanzuKuberntesCluster` cmdlet retrieves a Tanzu Kubernetes Cluster.

## Examples

### Example 1

```powershell
Get-TanzuKubernetesCluster
```

This example retrieves all Tanzu Kubernetes Clusters from all Namespaces

### Example 2

```powershell
Get-TanzuKubernetesCluster -namespace sfo-w01-tkc01 -tkc sfo-w01-tkc01 
```

This example retrieves a Tanzu Kubernetes Cluster named "sfo-w01-tkc01" from the Namespace specified "sfo-w01-tkc01".

## Parameters

### -namespace

The name of the Namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -tkc

The name of the Tanzu Kubernetes Cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -detail

The detailed information of the Tanzu Kubernetes Cluster.

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
