# Add-VrmsNetworkAdapter

## Synopsis

Adds a second ethernet adapter and configures the required routing for vSphere Replication appliance.

## Syntax

```powershell
Add-VrmsNetworkAdapter [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-vrmsFqdn] <String> [-vrmsRootPass] <String> [-vrmsAdminPass] <String> [-vrmsIpAddress] <String>
 [-replicationSubnet] <String> [-replicationIpAddress] <String> [-replicationGateway] <String>
 [-replicationPortgroup] <String> [-replicationRemoteNetwork] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-VrmsNetworkAdapter` cmdlet adds a second ethernet adapter and configures the required routing for the
vSphere Replication appliance.
The cmdlet connects to SDDC Manager using the -server, -user, and -password
values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Validates that network connectivity and authentication is possible to the vSphere Replication instance
- Configures the secondary ethernet adapter and configures the required routing for the replication network.

## Examples

### Example 1

```powershell
Add-VrmsNetworkAdapter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -vrmsFqdn sfo-m01-vrms01.sfo.rainpole.io -vrmsRootPass VMw@re1! -vrmsAdminPass VMw@re1! -vrmsIpAddress 172.18.95.125 -replicationSubnet 172.18.111.0/24 -replicationIpAddress 172.18.111.125 -replicationGateway 172.18.111.1  -replicationPortgroup sfo-m01-cl01-vds01-pg-vrms -replicationRemoteNetwork 172.18.96.0/24
```

This example configures the protected and recovery site vSphere Replication appliances to use a secondary ethernet adapter for vSphere Replication traffic.

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

The name of the Management Domain.

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

### -vrmsFqdn

The FQDN of the vSphere Replication Virtual Appliance.

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

### -vrmsRootPass

The root password of the vSphere Replication Virtual Appliance.

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

### -vrmsAdminPass

The admin password of the vSphere Replication Virtual Appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vrmsIpAddress

The IP Address of the vSphere Replication Virtual Appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -replicationSubnet

The subnet of the vSphere Replication network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -replicationIpAddress

The IP Address of the vSphere Replication Virtual Appliance on the vSphere Replication network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -replicationGateway

The gateway of the vSphere Replication network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -replicationPortgroup

The name of the vSphere Distributed Port Group for the vSphere Replication network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -replicationRemoteNetwork

The subnet of the remote vSphere Replication network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 13
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
