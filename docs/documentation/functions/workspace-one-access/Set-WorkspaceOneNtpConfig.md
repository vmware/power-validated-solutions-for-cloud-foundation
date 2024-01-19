# Set-WorkspaceOneNtpConfig

## Synopsis

Configure NTP Server on a Workspace ONE Access appliance.

## Syntax

### standaloneWsa

```powershell
Set-WorkspaceOneNtpConfig -server <String> -user <String> -pass <String> [-wsaFqdn <String>]
 [-rootPass <String>] [-ntpServer <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### vrslcmIntegrated

```powershell
Set-WorkspaceOneNtpConfig -server <String> -user <String> -pass <String> [-ntpServer <String>]
 [-vrslcmIntegrated] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WorkspaceOneNtpConfig` cmdlet configures the NTP Server details of the Workspace ONE Access appliance using the primary NTP Server configured on SDDC Manager if no NTP Server is provided.

The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Gathers the NTP configuration details from SDDC Manager
- Configures Workspace ONE Access NTP configuration

## Examples

### Example 1

```powershell
Set-WorkspaceOneNtpConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -rootPass VMw@re1!
```

This example configures the Workspace ONE Access Virtual Appliance sfo-wsa01.sfo.rainpole.io with the primary NTP server defined in SDDC Manager.

### Example 2

```powershell
Set-WorkspaceOneNtpConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -rootPass VMw@re1! -ntpServer ntp.lax.rainpole.io
```

This example adds the NTP server ntp.lax.rainpole.io to the Workspace ONE Access Virtual Appliance sfo-wsa01.sfo.rainpole.io.

### Example 3

```powershell
Set-WorkspaceOneNtpConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -rootPass VMw@re1! -vrslcmIntegrated -ntpServer ntp.lax.rainpole.io 
```

This example adds the NTP server ntp.lax.rainpole.io to the VMware Aria Suite Lifecycle integrated Workspace ONE Access nodes.

### Example 4

```powershell
Set-WorkspaceOneNtpConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vrslcmIntegrated
```

This example adds the primary NTP server defined in SDDC Manager to the VMware Aria Suite Lifecycle integrated Workspace ONE Access nodes.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -wsaFqdn

The FQDN of the Workspace ONE Access Virtual Appliance.

```yaml
Type: String
Parameter Sets: standaloneWsa
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -rootPass

The root password of the Workspace ONE Access Virtual Appliance.

```yaml
Type: String
Parameter Sets: standaloneWsa
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ntpServer

The NTP Server to configure on the Workspace ONE Access Virtual Appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vrslcmIntegrated

Flag to indicate if the Workspace ONE Access Virtual Appliance is integrated with VMware Aria Suite Lifecycle Manager.

```yaml
Type: SwitchParameter
Parameter Sets: vrslcmIntegrated
Aliases:

Required: False
Position: Named
Default value: False
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
