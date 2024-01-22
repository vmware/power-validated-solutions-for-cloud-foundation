# Update-vRSLCMPSPack

## Synopsis

Refresh Product Support Packs and Install

## Syntax

```powershell
Update-vRSLCMPSPack [-server] <String> [-user] <String> [-pass] <String> [[-psPack] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vRSLCMPSPack` cmdlet refreshes the available Product Support Packs and installs the required version
to VMware Aria Suite Lifecycle.
The cmdlet connects to SDDC Manager using the -server, -user, and -password
values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Update-vRSLCMPSPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -psPack PSPACK6
```

This example refreshes the available Product Support Packs and installs the required version to VMware Aria Suite Lifecycle.

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

### -psPack

The Product Support Pack to install.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
