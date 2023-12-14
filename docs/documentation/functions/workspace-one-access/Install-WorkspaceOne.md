# Install-WorkspaceOne

## Synopsis

Deploy Workspace ONE Access Virtual Appliance

## Syntax

```powershell
Install-WorkspaceOne [-server] <String> [-user] <String> [-pass] <String> [-wsaFqdn] <String>
 [-wsaIpAddress] <String> [-wsaGateway] <String> [-wsaSubnetMask] <String> [-wsaFolder] <String>
 [[-wsaOvaPath] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Install-WorkspaceOne` cmdlet deploys the Workspace ONE Access Virtual Appliance OVA.
The cmdlet connects
to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Gathers DNS and NTP configuration from SDDC Manager
- Deploys the Workspace ONE Access Virtual Appliance to the Management Domain vCenter Server.

## Examples

### Example 1

```powershell
Install-WorkspaceOne -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaIpAddress 192.168.31.60 -wsaGateway 192.168.31.1 -wsaSubnetMask 255.255.255.0 -wsaOvaPath F:\identity-manager.ova -wsaFolder sfo-m01-fd-wsa
```

This example deploys the Workspace ONE Access Virtual Appliance named sfo-wsa01.sfo.rainpole.io into the sfo-m01-fd-wsa folder of the management domain.

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

### -wsaFqdn

The FQDN of the Workspace ONE Access Virtual Appliance.

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

### -wsaIpAddress

The IP Address of the Workspace ONE Access Virtual Appliance.

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

### -wsaGateway

The Gateway of the Workspace ONE Access Virtual Appliance.

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

### -wsaSubnetMask

The Subnet Mask of the Workspace ONE Access Virtual Appliance.

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

### -wsaFolder

The folder to deploy the Workspace ONE Access Virtual Appliance to.

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

### -wsaOvaPath

The path to the Workspace ONE Access Virtual Appliance OVA file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
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
