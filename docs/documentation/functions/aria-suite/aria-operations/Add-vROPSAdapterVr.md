# Add-vROPSAdapterVr

## Synopsis

Adds a vSphere Replication Adapter to VMware Aria Operations

## Syntax

```powershell
Add-vROPSAdapterVr [-server] <String> [-user] <String> [-pass] <String> [-vrFqdn] <String> [-vrUser] <String> [-vrPass] <String> [[-collectorGroupName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterVr` cmdlet adds an vSphere Replication Adapter to VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the Workload Domain is valid and then obtains the NSX Manager cluster details
- Validates that the collector group exits in VMware Aria Operations
- Validates that the Adapter and Credentials do not already exist in VMware Aria Operations
- Creates a new vSphere Replication Adapter in VMware Aria Operations
- Starts the collection of the vSphere Replication Adapter in VMware Aria Operations

## Examples

### Example 1

```powershell
Add-vROPSAdapterVr -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vrFqdn sfo-m01-vrms01.sfo.rainpole.io -vrUser vrops-vr@vsphere.local -vrPass VMw@re1!VMw@re1! -collectorGroupName "sfo-remote-collectors"
```

This example creates a vSphere Replication Adapter in VMware Aria Operations and assigns to the collector group defined.

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

The username used to connect to the SDDC Manager.

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

### -vrFqdn

The fully qualified domain name of the vSphere Replication Manager.

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

### -vrUser

The username used to connect to the vSphere Replication Manager.

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

### -vrPass

The password used to connect to the vSphere Replication Manager.

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

### -collectorGroupName

The name of the collector group to assign the vSphere Replication Adapter to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
