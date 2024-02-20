# Add-EsxiVrmsVMkernelPort

## Synopsis

Create a VMkernel port on ESXi hosts

## Syntax

``` powershell
Add-EsxiVrmsVMkernelPort [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-portgroup] <String> [-netmask] <String> [-ipAddresses] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-EsxiVrmsVMkernelPort` cmdlet creates a VMkernel port on each ESXi host for vSphere Replication traffic.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Creates a VMkernel port on each ESXi host for vSphere Replication traffic.

## Examples

### Example 1

``` powershell
Add-EsxiVrmsVMkernelPort -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -portgroup sfo01-m01-cl01-vds01-pg-vrms -netmask 255.255.255.0 -ipAddresses @("172.27.15.101","172.27.15.102","172.27.15.103","172.27.15.104")
```

This example creates a VMkernel port for each ESXi host Management Domain.

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

### -domain

The name of the workload domain to run against.

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

### -portgroup

The vSphere Distributed Port Group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -netmask

The subnet mask for the VMkernel port.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ipAddresses

The IP addresses for the VMkernel port.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
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
