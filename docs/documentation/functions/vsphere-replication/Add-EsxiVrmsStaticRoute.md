# Add-EsxiVrmsStaticRoute

## Synopsis

Create a static route on ESXi hosts for vSphere Replication traffic

## Syntax

```powershell
Add-EsxiVrmsStaticRoute [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-subnet] <String> [-gateway] <IPAddress> [-portgroup] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-EsxiVrmsStaticRoute` cmdlet creates a static route on each ESXi hosts for vSphere Replication traffic.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Creates static routes on ESXi hosts for vSphere Replication traffic.

## Examples

### Example 1

```powershell
Add-EsxiVrmsStaticRoute -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -subnet 172.27.15.0/24 -gateway 172.27.15.1 -portgroup sfo-sfo-m01-cl01-vds01-pg-vrms

```

This example adds a static route to each ESXi host in the Management Domain to the recovery site vSphere Replication subnet.

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

### -subnet

The vSphere Replication subnet in CIDR notation.

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

### -gateway

The vSphere Replication gateway.

```yaml
Type: IPAddress
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
