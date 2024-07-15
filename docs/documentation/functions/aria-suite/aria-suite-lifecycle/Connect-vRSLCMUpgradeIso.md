# Connect-vRSLCMUpgradeIso

## Synopsis

Connects the upgrade ISO to VMware Aria Suite Lifecycle appliance.

## Syntax

```powershell
Connect-vRSLCMUpgradeIso [-server] <String> [-user] <String> [-pass] <String> [-contentLibrary] <String> [-libraryItem] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Connect-vRSLCMUpgradeIso` cmdlet connects the upgrade ISO to VMware Aria Suite Lifecycle.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validated the content library and ISO file are present
- Connects the ISO to the VMware Aria Suite Lifecycle appliance

## Examples

### Example 1

```powershell
Connect-vRSLCMUpgradeIso -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -contentLibrary Operations -libraryItem "VMware-Aria-Suite-Lifecycle-Appliance-x.y.z-xxxxxxxx-updaterepo"
```

This example connects the upgrade ISO to VMware Aria Suite Lifecycle appliance.

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

### -contentLibrary

The name of the vSphere content library.

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

### -libraryItem

The name of the ISO file in the vSphere content library.

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
