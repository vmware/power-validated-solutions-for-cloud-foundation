# Import-vRSLCMLockerCertificate

## Synopsis

Add a certificate to the VMware Aria Suite Lifecycle locker

## Syntax

```powershell
Import-vRSLCMLockerCertificate [-server] <String> [-user] <String> [-pass] <String>
 [-certificateAlias] <String> [[-certificatePassphrase] <String>] [[-certChainPath] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Import-vRSLCMLockerCertificate` cmdlet imports a PEM encoded chain file to the VMware Aria Suite Lifecycle
Manager Locker.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values then:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Verifies that the certificate is not present in the VMware Aria Suite Lifecycle locker
- Imports the certificate chain to the VMware Aria Suite Lifecycle locker.

## Examples

### Example 1

```powershell
Import-vRSLCMLockerCertificate -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -certificateAlias "xint-vrops01" -certificatePassphrase "VMw@re1!"
```

This example adds a certificate to the VMware Aria Suite Lifecycle locker.

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

The SDDC Manager admin user.

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

The SDDC Manager admin password.

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

### -certificateAlias

The alias of the certificate to add to the VMware Aria Suite Lifecycle locker.

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

### -certificatePassphrase

The passphrase of the certificate to add to the VMware Aria Suite Lifecycle locker.

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

### -certChainPath

The path to the certificate chain file to add to the VMware Aria Suite Lifecycle locker.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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
