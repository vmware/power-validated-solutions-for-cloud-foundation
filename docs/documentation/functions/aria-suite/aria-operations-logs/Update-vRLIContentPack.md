# Update-vRLIContentPack

## Synopsis

Updates the VMware Aria Operations for Logs content pack from the marketplace.

## Syntax

```powershell
Update-vRLIContentPack [-server] <String> [-user] <String> [-pass] <String> [-contentPack] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vRLIContentPack` cmdlet updates a designated VMware Aria Operations for Logs content pack from the
online Content Pack Marketplace hosted on GitHub.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Validates that network connectivity is possible to VMware Aria Operations for Logs
- Updates the VMware Aria Operations for Logs content pack selected from the marketplace.

## Examples

### Example 1

```powershell
Update-vRLIContentPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -contentPack NSX
```

This example updates the VMware Aria Operations for Logs content pack for NSX to the latest version from the marketplace.

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

### -contentPack

The content pack to update.
The supported content packs are: VSPHERE','VSAN','NSX','WSA','VRSLCM','VROPS','VRNI','VRA','VRO','SRM','LINUX','LINUX-SYSTEMD'

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
