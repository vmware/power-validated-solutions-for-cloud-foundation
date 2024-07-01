# Remove-AriaNetworksDataSource

## Synopsis

Remove a data source from a VMware Aria Operations for Networks deployment.

## Syntax

```powershell
Remove-AriaNetworksDataSource [-id] <String> [-dataSourceType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-AriaNetworksDataSource` cmdlet removes a data source from a VMware Aria Operations for Networks deployment.

## Examples

### Example 1

```powershell
Remove-AriaNetworksDataSource -dataSourceType vcenter -id 15832:902:2623605245375371420
```

This example removes the vCenter Server which is configured as a data source in a VMware Aria Operations for Networks deployment with a specific ID.

## Parameters

### -id

The id of the data source in the VMware Aria Operations for Networks deployment.

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

### -dataSourceType

The type of the data source, in one of `nsxt` or `vcenter`.

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

Progress action.

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
