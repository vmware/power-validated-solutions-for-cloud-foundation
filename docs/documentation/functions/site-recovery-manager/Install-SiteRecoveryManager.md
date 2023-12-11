# Install-SiteRecoveryManager

## Synopsis

Deploy Site Recovery Manager Virtual Appliance

## Syntax

```powershell
Install-SiteRecoveryManager [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-srmFqdn] <String> [-srmIpAddress] <String> [-srmGateway] <String> [-srmNetPrefix] <String>
 [-srmNetworkSearchPath] <String> [-srmFolder] <String> [-srmVaRootPassword] <String>
 [-srmVaAdminPassword] <String> [-srmDbPassword] <String> [[-srmOvfPath] <String>]
 [[-deploymentOption] <String>] [[-vmwareOvfToolPath] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Install-SiteRecoveryManager` cmdlet deploys the Site Recovery Manager Virtual Appliance OVA.
The cmdlet
connects to SDDC Manager using the -server, -user, and -password values to retrive the management domain
vCenter Server details from its inventory and then:

- Gathers vSphere configuration from vCenter Server
- Gathers DNS and NTP configuration from SDDC Manager
- Deploys the Site Recovery Manage Virtual Appliance.

## Examples

### Example 1

```powershell
Install-SiteRecoveryManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -srmFqdn sfo-wsa01.sfo.rainpole.io -srmIpAddress 192.168.31.60 -srmGateway 192.168.31.1 -srmNetPrefix 255.255.255.0 -srmNetworkSearchPath sfo.rainpole.io -srmFolder sfo-m01-fd-srm -srmVaRootPassword VMw@re1! -srmVaAdminPassword VMw@re1! -srmDbPassword VMw@re1! -deploymentOption standard -srmOvfPath F:\identity-manager.ova
```

This example deploys the Site Recovery Manager Virtual Appliance into the sfo-m01-fd-srm folder of the management domain.

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

The SSO Administrator username

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

### -srmFqdn

The FQDN of the Site Recovery Manager Virtual Appliance.

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

### -srmIpAddress

The IP Address of the Site Recovery Manager Virtual Appliance.

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

### -srmGateway

The Gateway of the Site Recovery Manager Virtual Appliance.

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

### -srmNetPrefix

The Netmask of the Site Recovery Manager Virtual Appliance.

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

### -srmNetworkSearchPath

The DNS Search Path of the Site Recovery Manager Virtual Appliance.

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

### -srmFolder

The folder to deploy the Site Recovery Manager Virtual Appliance into.

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

### -srmVaRootPassword

The root password of the Site Recovery Manager Virtual Appliance.

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

### -srmVaAdminPassword

The admin password of the Site Recovery Manager Virtual Appliance.

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

### -srmDbPassword

The database password of the Site Recovery Manager Virtual Appliance.

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

### -srmOvfPath

The path to the Site Recovery Manager Virtual Appliance OVA file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -deploymentOption

The deployment option to use for the Site Recovery Manager Virtual Appliance.

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

### -vmwareOvfToolPath

The path to the VMware OVF Tool executable.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
