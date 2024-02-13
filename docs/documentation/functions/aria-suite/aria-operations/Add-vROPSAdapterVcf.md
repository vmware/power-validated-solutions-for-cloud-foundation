# Add-vROPSAdapterVcf

## Synopsis

Adds an VMware Cloud Foundation Adapter to VMware Aria Operations

## Syntax

``` powersehll
Add-vROPSAdapterVcf [-server] <String> [-user] <String> [-pass] <String> [[-collectorGroupName] <String>]
 [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterVcf` cmdlet adds a VMware Cloud Foundation Adapter to VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the collector group exits in VMware Aria Operations
- Validates that the Adapter does not already exist in VMware Aria Operations
- Creates a new vCenter Server Adapter for each Workload Domain in the SDDC Manager instance in VMware Aria Operations
- Creates a new vSAN Adapter for each Workload Domain in the SDDC Manager instance in VMware Aria Operations
- Creates a new NSX Adapter for each Workload Domain in the SDDC Manager instance in VMware Aria Operations
- Creates a new VMware Cloud Foundation Adapter in VMware Aria Operations
- Starts the collection of the VMware Cloud Foundation Adapter in VMware Aria Operations

## Examples

### Example 1

``` powershell
Add-vROPSAdapterVcf -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName sfo-m01-collector-group
```

This example creates a VMware Cloud Foundation adapter in VMware Aria Operations and assigns it to a collector group.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username to authenticate to the SDDC Manager.

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

### -pass

The password to authenticate to the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -collectorGroupName

The name of the collector group from VMware Aria Operations.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: Default collector group
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters
This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
