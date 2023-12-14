# Set-VrmsVamiCertificate

## Synopsis

Install a Signed Certificate for the VAMI Appliance interface

## Syntax

```powershell
Set-VrmsVamiCertificate [[-pkcs12CertFile] <String>] [-certPassword] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VrmsVamiCertificate` cmdlet replaces the certificate on the VAMI interface of the vSphere
Replication appliance.

## Examples

### Example 1

```powershell
Set-VrmsVamiCertificate -pkcs12CertFile C:\Certs\sfo-m01-vrms01.4.p12 -certPassword VMw@re1!
```

This example replaces the certificate on the VAMI Appliance interface of the vSphere Replication appliance.

## Parameters

### -pkcs12CertFile

The pkcs12CertFile parameter The path to the certificate file (.p12) to be installed on the.

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

The certPassword parameter The password to use to install the certificate file (.p12) on the.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
