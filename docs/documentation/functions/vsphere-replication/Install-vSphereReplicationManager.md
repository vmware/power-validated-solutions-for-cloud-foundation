 # Install-vSphereReplicationManager

## Synopsis

Deploy vSphere Replication Manager Virtual Appliance

## Syntax

```powershell
Install-vSphereReplicationManager [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-vrmsFqdn] <String> [-vrmsIpAddress] <String> [-vrmsGateway] <String> [-vrmsNetPrefix] <String> [-vrmsNetworkSearchPath] <String> [-vrmsPortgroup] <String> [-vrmsFolder] <String> [-vrmsVaRootPassword] <String> [-vrmsVaAdminPassword] <String> [[-vrmsOvfPath] <String>] [[-vmwareOvfToolPath] <String>] [<CommonParameters>]
```

## Description

The `Install-vSphereReplicationManager` cmdlet deploys the vSphere Replication Manager Virtual Appliance OVA.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values to retrieve the management domain vCenter Server details from its inventory and then:

- Gathers vSphere configuration from vCenter Server
- Gathers DNS and NTP configuration from SDDC Manager
- Deploys the vSphere Replication Manager Virtual Appliance.

## Examples

### Example 1

```powershell
Install-vSphereReplicationManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -vrmsFqdn sfo-m01-vrms01.sfo.rainpole.io -vrmsIpAddress 192.168.31.60 -vrmsGateway 192.168.31.1 -vrmsNetPrefix 255.255.255.0 -vrmsNetworkSearchPath sfo.rainpole.io -vrmsPortgroup sfo-m01-cl01-vds01-pg-vm-mgmt -vrmsFolder sfo-m01-fd-vrms -vrmsVaRootPassword VMw@re1! -vrmsVaAdminPassword VMw@re1! -vrmsOvfPath .\vSphere_Replication_OVF10.ovf
```

This example deploys the vSphere Replication Manager Virtual Appliance into the sfo-m01-fd-vrms folder of the management domain.

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

The FQDN of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsIpAddress

The IP Address of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsGateway

The Gateway of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsNetPrefix

The Netmask of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsNetworkSearchPath

The DNS Search Path of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsPortgroup

The port group to attached to the vSphere Replication Manager Virtual Appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False

### -vrmsFolder

The folder to deploy the vSphere Replication Manager Virtual Appliance into.

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

### -vrmsVaRootPassword

The root password of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsVaAdminPassword

The admin password of the vSphere Replication Manager Virtual Appliance.

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

### -vrmsOvfPath

The path to the vSphere Replication Manager Virtual Appliance OVA file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vmwareOvfToolPath

The path to the VMware OVF Tool executable.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: C:\Program Files\VMware\VMware OVF Tool\ovftool.exe
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
