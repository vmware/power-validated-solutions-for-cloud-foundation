# Remove-WMRegistry

## Synopsis

Disable the embedded Harbor Registry on a Supervisor Cluster

## Syntax

```powershell
Remove-WMRegistry [-cluster] <String> [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-WMRegistry` cmdlet disables the embedded Harbor Registry on a Supervisor Cluster.

## Examples

### Example 1

```powershell
Get-WMRegistry -cluster sfo-w01-cl01 | Remove-WMRegistry
```

This example disables the embedded Harbor Registry on Supervisor Cluster sfo-w01-cl01 via pipeline from Get-WMCluster

### Example 2

```powershell
Remove-WMRegistry -cluster sfo-w01-cl01
```

This example disables the embedded Harbor Registry on Supervisor Cluster sfo-w01-cl01.

## Parameters

### -cluster

The name of the Supervisor Cluster.

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

### -inputObject

The input object from the pipeline.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
