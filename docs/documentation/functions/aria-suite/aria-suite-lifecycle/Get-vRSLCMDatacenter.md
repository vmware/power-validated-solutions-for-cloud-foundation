# Get-vRSLCMDatacenter

## Synopsis

Get paginated list of datacenters in VMware Aria Suite Lifecycle

## Syntax

```powershell
Get-vRSLCMDatacenter [[-vmid] <String>] [[-datacenterName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMDatacenter` cmdlet gets a paginated list of datacenters in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMDatacenter
```

This example gets all datacenters in VMware Aria Suite Lifecycle

### Example 2

```powershell
Get-vRSLCMDatacenter -vmid 2b54b028-9eba-4d2f-b6ee-66428ea2b297
```

This example gets the details of a datacenter based on the vmid

### Example 3

```powershell
Get-vRSLCMDatacenter -name sfo-m01-dc01
```

This example gets the details of a datacenter based on the name.

## Parameters

### -vmid

The vmid of the datacenter.

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

### -datacenterName

The name of the datacenter.

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
