# Add-vRSLCMLockerCertificate

## Synopsis

Add a certificate to the VMware Aria Suite Lifecycle locker

## Syntax

```powershell
Add-vRSLCMLockerCertificate [-vrslcmFQDN] <String> [-certificateAlias] <String>
 [[-certificatePassphrase] <String>] [[-certChainPath] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMLockerCertificate` cmdlet adds a certificate to the VMware Aria Suite Lifecycle locker.

## Examples

### Example 1

```powershell
Add-vRSLCMLockerCertificate
```

This example gets all certificates in the locker

### Example 2

```powershell
Add-vRSLCMLockerCertificate -vmid 83abd0fd-c92d-4d8f-a5e8-9a1fc4fa6009
```

This example gets the details of a certificate based on the vmid.

## Parameters

### -vrslcmFQDN

The fully qualified domain name of the VMware Aria Suite Lifecycle appliance.

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

### -certificateAlias

The alias of the certificate.

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

### -certificatePassphrase

The passphrase of the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certChainPath

The path to the certificate chain file.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
