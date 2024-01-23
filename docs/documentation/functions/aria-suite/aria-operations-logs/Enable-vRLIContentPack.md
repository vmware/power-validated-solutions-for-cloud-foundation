# Enable-vRLIContentPack

## Synopsis

Enables the VMware Aria Operations for Logs content pack from the marketplace.

## Syntax

```powershell
Enable-vRLIContentPack [-server] <String> [-user] <String> [-pass] <String> [-token] <String>
 [-contentPack] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Enable-vRLIContentPack` cmdlet installs a designated VMware Aria Operations for Logs content pack from the
online Content Pack Marketplace hosted on GitHub.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Validates that network connectivity is possible to VMware Aria Operations for Logs
- Installs the VMware Aria Operations for Logs content pack selected from the marketplace.

## Examples

### Example 1

```powershell
Enable-vRLIContentPack -contentPack VRO
```

This examples installs the VMware Aria Automation Orchestrator content pack from the marketplace.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the SDDC Manager.

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

The user name to authenticate with SDDC Manager.

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

The password to authenticate with SDDC Manager.

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

### -token

The base64 encoded GitHub token.

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

### -contentPack

The content pack to install from the marketplace.
'VSPHERE','VSAN','NSX','WSA','VRSLCM','VROPS','VRNI','VRA','VRO','SRM','LINUX','LINUX-SYSTEMD'

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
