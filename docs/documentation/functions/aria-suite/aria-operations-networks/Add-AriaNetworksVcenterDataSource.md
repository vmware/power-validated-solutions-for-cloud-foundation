# Add-AriaNetworksVcenterDataSource

## Synopsis

Adds a new vCenter Server data source to VMware Aria Operations for Networks.

## Syntax

```powershell
Add-AriaNetworksVcenterDataSource [-jsonFile] <String> [<CommonParameters>]
```

## Description

The `Add-AriaNetworksVcenterDataSource` cmdlet adds a new vCenter Server data source to VMware Aria Operations for Networks.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the VMware Aria Suite Lifecyle instance
- Validates that network connectivity and authentication is possible to the VMware Aria Operations for Networks
- Gathers vCenter Server details for each Workload Domain within the SDDC Manager instance
- Adds a new vCenter Server data source for each Workload Domain

## Examples

### Example 1

```powershell
Add-AriaNetworksVcenterDataSource -jsonFile .\invDeploySpec.json
```

This example create a vCenter Server data source for each Workload Domain in the VMware Aria Operations for Networks instance using the JSON file provided.

## PARAMETERS

### -jsonFile
The path to the JSON specification file.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
