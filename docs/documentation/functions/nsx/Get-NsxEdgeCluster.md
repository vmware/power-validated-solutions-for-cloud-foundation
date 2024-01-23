# Get-NsxEdgeCluster

## Synopsis

Retrieves NSX Edge Cluster(s)

## Syntax

```powershell
Get-NsxEdgeCluster [[-Name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtEdgeCluster` cmdlet retrieves NSX Edge Cluster(s).

## Examples

### Example 1

```powershell
Get-NsxtEdgeCluster
```

This example returns any NSX Edge Clusters

### Example 2

```powershell
Get-NsxtEdgeCluster -Name "sfo-w01-ec01"
```

This example returns any NSX Edge Clusters.

## Parameters

### -Name

The NSX Edge Cluster name.

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
