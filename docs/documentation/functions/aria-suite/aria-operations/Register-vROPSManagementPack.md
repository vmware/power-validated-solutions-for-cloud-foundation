# Register-vROPSManagementPack

## Synopsis

Enable / Disable a Management Pack

## Syntax

```powershell
Register-vROPSManagementPack [-server] <String> [-user] <String> [-pass] <String> [-state] <String> [-packType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Register-vROPSManagementPack` cmdlet activates or deactivates a management pack in VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates if the Management Pack is activated or deactivated in VMware Aria Operations
- Activates or deactivates the Management Pack

## Examples

### Example 1

```powershell
Register-vROPSManagementPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -state enable -packType Ping
```

This example activates the Ping management pack in VMware Aria Operations.

### Example 2

```powershell
Register-vROPSManagementPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -state disable -packType Ping
```

This example deactivates the Ping management pack in VMware Aria Operations.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

### -state

The state of the Management Pack to activate or deactivate.

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

### -packType

The Management Pack type to activate or deactivate.

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
