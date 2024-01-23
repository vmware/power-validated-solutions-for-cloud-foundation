# Add-vROPSAdapterPing

## Synopsis

Adds a Ping Adapter to VMware Aria Operations

## Syntax

```powershell
Add-vROPSAdapterPing [-server] <String> [-user] <String> [-pass] <String> [-addressList] <String>
 [-adapterName] <String> [[-collectorGroupName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterPing` cmdlet adds a Ping adapter to VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the collector group exits in VMware Aria Operations
- Validates that the Ping Adapter does not already exist in VMware Aria Operations
- Creates a new Ping adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapterPing -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -addressList "192.168.11.30,192.168.11.31,192.168.11.32,192.168.11.33" -adapterName xint-vrops01 -collectorGroupName "sfo-remote-collectors"
```

This example creates a new Ping adapter called 'xint-vrops01', assigns the IP Addresses provided and assigned the collector group called 'sfo-remote-collectors'

### Example 2

```powershell
Add-vROPSAdapterPing -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -addressList "192.168.11.50,192.168.11.51,192.168.11.52,192.168.11.53" -adapterName xint-vra01
```

This example creates a new Ping adapter called 'xint-vra01', assigns the IP Addresses provided and assigns to the 'Default collector group'.

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

### -addressList

The list of IP Addresses to ping.

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

### -adapterName

The name of the Ping Adapter to create.

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

### -collectorGroupName

The name of the Collector Group to assign to the Ping Adapter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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
