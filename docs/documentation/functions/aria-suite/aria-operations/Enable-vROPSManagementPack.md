# Enable-vROPSManagementPack

## Synopsis

Install a Management Pack in VMware Aria Operations

## Syntax

```powershell
Enable-vROPSManagementPack [-server] <String> [-user] <String> [-pass] <String> [-packType] <String> [[-pakFile] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Enable-vROPSManagementPack` cmdlet uploads and installs a management pack in VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates the path to the Management Pack (.pak) file
- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates the Management Pack does not exist in VMware Aria Operations
- Uploads the Management Pack file to VMware Aria Operations
- Installs the Management Pack to VMware Aria Operations

## Examples

### Example 1

```powershell
Enable-vROPSManagementPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -packType "SDDC Health" -pakfile .\management.pak
```

This example installs the SDDC Health Management Pack in VMware Aria Operations.

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

### -packType

The Management Pack type to install.

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

### -pakFile

The path to the Management Pack (.pak) file to install.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
