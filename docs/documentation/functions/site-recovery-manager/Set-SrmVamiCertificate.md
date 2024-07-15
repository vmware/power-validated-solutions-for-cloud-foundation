# Set-SrmVamiCertificate

## Synopsis

Install a Signed Certificate for the VAMI Appliance interface

## Syntax

```powershell
Set-SrmVamiCertificate [[-pkcs12CertFile] <String>] [-certPassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmVamiCertificate` cmdlet replaces the certificate on the VAMI interface of the Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Set-SrmVamiCertificate -pkcs12CertFile C:\Certs\sfo-m01-srm01.4.p12 -certPassword VMw@re1!
```

This example replaces the certificate on the VAMI Appliance interface of the Site Recovery Manager appliance.

## Parameters

### -pkcs12CertFile

The path to the certificate file (.p12) to be installed on the VAMI Appliance interface.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certPassword

The password for the certificate file (.p12) to be installed on the VAMI Appliance interface.

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
