# Add-vROPSAdapterNsxt

## Synopsis

Adds an NSX Adapter to VMware Aria Operations

## Syntax

```powershell
Add-vROPSAdapterNsxt [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [[-collectorGroupName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterNsxt` cmdlet adds an NSX Adapter for a Workload Domains NSX Manager cluster to VMware Aria
Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the Workload Domain is valid and then obtains the NSX Manager cluster details
- Validates that the collector group exits in VMware Aria Operations
- Validates that the NSX Adapter and Credentials do not already exist in VMware Aria Operations
- Validates that the credentials do not already exist in VMware Aria Operations
- Creates a new NSX Adapter for the  Workload Domain using credentials from SDDC Manager inventory in VMware Aria Operations
- Starts the collection of the NSX Adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapterNsxt -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -collectorGroupName "sfo-remote-collectors"
```

This example creates an NSX Adapter for the Management Workload Domain named in VMware Aria Operations and assigns to the collector group defined

### Example 2

```powershell
Add-vROPSAdapterNsxt -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -collectorGroupName "sfo-remote-collectors"
This example creates an NSX Adapter for the VI Workload Domain named in VMware  Aria Operations and assigns to the collector group defined
```

This example creates an NSX Adapter for the VI Workload Domain named in VMware  Aria Operations and assigns to the collector group defined

### Example 3

```powershell
Add-vROPSAdapterNsxt -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01
```

This example creates an NSX Adapter for the Management Workload Domain named in VMware Aria Operations and assigns to the "Default collector group".

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

### -domain

The Workload Domain to add the NSX Adapter for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -collectorGroupName

The name of the Collector Group to assign to the NSX Adapter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: Default collector group
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
