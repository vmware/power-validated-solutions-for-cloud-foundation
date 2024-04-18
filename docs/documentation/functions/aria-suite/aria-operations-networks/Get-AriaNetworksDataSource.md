# Get-AriaNetworksDataSource

## Synopsis

Get all the data sources in a VMware Aria Operations for Networks deployment.

## Syntax

```powershell
Get-AriaNetworksDataSource [[-fqdn] <String>] [[-dataSourceType] <String>] [<CommonParameters>]
```

## Description

The `Get-AriaNetworksDataSource` cmdlet collects data sources are connected to a VMware Aria Operations for Networks deployment.
This is necessary in order to find the "entity_id" for use in other modules, such as the Delete-AriaNetworksDataSource.

## Examples

### Example 1

```powershell
Get-AriaNetworksDataSource
```

This example gets all of the items which are configured as a data source in a VMware Aria Operations for Networks deployment.

### Example 2

```powershell
Get-AriaNetworksDataSource -fqdn sfo-m01-vc01.sfo.rainpole.io
```

This example gets the details of the vCenter Server with the fqdn sfo-m01-vc01.sfo.rainpole.io.

## Parameters

### -fqdn

The fqdn of the data source.

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

### -dataSourceType

Specifies the type of the resource.
One of: vcenter or nsxt.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
