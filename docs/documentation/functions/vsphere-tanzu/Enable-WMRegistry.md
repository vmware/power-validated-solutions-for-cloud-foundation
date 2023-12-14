# Enable-WMRegistry

## Synopsis

Enable the embedded Harbor Registry on a Supervisor Cluster

## Syntax

```powershell
Enable-WMRegistry [[-domain] <String>] [[-cluster] <String>] [[-storagePolicy] <String>]
 [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Enable-WMRegistry` cmdlet enables the embedded Harbor Registry on a Supervisor Cluster.

## Examples

### Example 1

```powershell
Enable-WMRegistry -cluster sfo-w01-cl01 -storagePolicy vsphere-with-tanzu-policy
```

This example enables the embedded Harbor Registry on Supervisor Cluster sfo-w01-cl01

### Example 2

```powershell
Get-WMCluster -cluster sfo-w01-cl01 | Enable-WMRegistry
```

This example enables the embedded Harbor Registry on Supervisor Cluster sfo-w01-cl01 via pipeline from Get-WMCluster with the default image storage policy for the Supervisor Cluster.

## Parameters

### -domain

The name of the domain.

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

### -cluster

The name of the Supervisor Cluster.

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

### -storagePolicy

The name of the image storage policy for the Supervisor Cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -inputObject

The input object from the pipeline.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByValue)
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
