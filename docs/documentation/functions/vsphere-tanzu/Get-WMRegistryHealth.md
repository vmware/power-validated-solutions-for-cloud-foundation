# Get-WMRegistryHealth

## Synopsis

Retrieves the embedded Harbor Registry Health

## Syntax

```powershell
Get-WMRegistryHealth [[-registry] <String>] [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Get-WMRegistry` cmdlet retrieves the embedded Harbor Registry Health.

## Examples

### Example 1

```powershell
Get-WMRegistryHealth [[-registry] <String>] 
```

This example gets the health status of the embedded Harbor Registry

### Example 2

```powershell
Get-WMRegistry -cluster sfo-w01-cl01 | Get-WMRegistryHealth
```

This example enables the embedded Harbor Registry on Supervisor Cluster sfo-w01-cl01 via pipeline from Get-WMCluster.

## Parameters

### -registry

The id of the registry.

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
