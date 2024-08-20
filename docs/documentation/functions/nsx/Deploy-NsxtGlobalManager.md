# Deploy-NsxtGlobalManager

## Synopsis

Deploy an NSX Global Manager appliance

## Syntax

```powershell
Deploy-NsxtGlobalManager [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-hostname] <String> [-portgroup] <String> [-domain] <String> [-ipAddress] <String> [-netmask] <String> [-gateway] <String> [-dnsServer] <String> [-ntpServer] <String> [-adminPassword] <String> [-folder] <String> [[-ovaPath] <String>] [<CommonParameters>]
```

## Description

The `Deploy-NsxtGlobalManager` cmdlet deploys an NSX Global Manager appliance to a vSphere Cluster for a workload domain.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to the vCenter Server
- Deploys the NSX Global Manager appliance into a vSphere Cluster

## Examples

### Example 1

```powershell
Deploy-NsxtGlobalManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -hostname sfo-m01-nsx-gm01a -portgroup sfo-m01-cl01-vds01-pg-vm-mgmt -ipAddress 172.11.10.82 -netmask "255.255.255.0" -gateway 172.11.10.1 -domain sfo.rainpole.io -dnsServer "172.11.10.4,172.11.10.5" -ntpServer ntp.sfo.rainpole.io -adminPassword VMw@re1!VMw@re1! -folder sfo-m01-fd-nsx -ovaPath .\nsx-unified.ova
```

This example deploys the NSX Global Manager appliance named sfo-m01-nsx-gm01a.

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

### -sddcDomain

The name of the workload domain to deploy the NSX Global Manager appliance.

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

### -hostname

The hostname of the NSX Global Manager.

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

### -portgroup

The portgroup to attach to the NSX Global Manager appliance.

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

### -domain

The domain namespace for the NSX Global Manager appliance.

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

### -ipAddress

The IP address of the NSX Global Manager appliance.

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

### -netmask

The netmask of the NSX Global Manager appliance.

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

### -gateway

The gateway of the NSX Global Manager appliance.

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

### -dnsServer

The DNS servers for the NSX Global Manager appliance.

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

### -ntpServer

The NTP servers for the NSX Global Manager appliance.

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

### -adminPassword

The admin password for the NSX Global Manager appliance.

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

### -folder

The virtual machine folder to place the NSX Global Manager appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ovaPath

The path to the NSX Unified appliance OVA file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
