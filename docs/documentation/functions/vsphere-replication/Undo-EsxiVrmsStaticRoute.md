# Undo-EsxiVrmsStaticRoute

## Synopsis

Removes a static route from ESXi hosts for vSphere Replication traffic

## Syntax

```powershell
Undo-EsxiVrmsStaticRoute [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-network] <IPAddress> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-EsxiVrmsStaticRoute` cmdlet removes a static route on each ESXi hosts for vSphere Replication traffic.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Removes the static routes on ESXi hosts for vSphere Replication traffic.

## Examples

### Example 1

```powershell
Undo-EsxiVrmsStaticRoute -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -network 172.27.15.0
```

This example removes a static route to each ESXi host in the Management Domain to the recovery site vSphere Replication subnet.

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

### -network

The network address of the static route to remove.

```yaml
Type: IPAddress
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
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
