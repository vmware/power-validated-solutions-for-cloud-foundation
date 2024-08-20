# Get-NsxtGlobalManagerClusterStatus

## Synopsis

Retrieve the NSX Global Manager cluster state.

## Syntax

```powershell
Get-NsxtGlobalManagerClusterStatus [-onlineNodes] [-status] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerClusterStatus` cmdlet retrieves the NSX Global Manager cluster state.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerClusterStatus
```

This example retrieves the NSX Global Manager cluster state.

## Parameters

### -onlineNodes

Display the online nodes only.

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

### -status

Display the status of the cluster.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
