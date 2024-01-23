# Install-vRLIPhotonAgent

## Synopsis

Install VMware Aria Operations for Logs Photon Agent in a Virtual Machine

## Syntax

```powershell
Install-vRLIPhotonAgent [-server] <String> [-user] <String> [-pass] <String> [-vmName] <String>
 [-vmRootPass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Install-vRLIPhotonAgent` cmdlet installs and configures the VMware Aria Operations for Logs Photon Agent on
a virtual machine.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the Virtual Machine exists in the vCenter Server inventory
- Downloads and Installs the Photon Agent on the Virtual Machne
- Configures the liagent.ini file to communicate with VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Install-vRLIPhotonAgent -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vmName sfo-wsa01 -vmRootPass VMw@re1!
```

This example installs and configures the VMware Aria Operations for Logs Agent on the virtual machine named 'sfo-wsa01'.

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

### -vmName

The Virtual Machine name.

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

### -vmRootPass

The Virtual Machine root password.

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
