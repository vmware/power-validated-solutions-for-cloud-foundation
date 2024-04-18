# Invoke-RequestSignedCertificate

## Synopsis

Request Certificate Signing Request (CSR) to be signed by a Certificate Authority.

## Syntax

```powershell
Invoke-RequestSignedCertificate [-csrFilePath] <String> [-outDirPath] <String> [-certificateAuthority] <String> [-caKeyPath] <String> [-caCertPath] <String> [-expireDays] <Int> [-caFqdn] <String> [-username] <String>  [-password] <String> [-certificateTemplate] <String> [-getCArootCert] <Switch>
```

## Description

The `Invoke-RequestSignedCertificate` cmdlet signs off a certificate signing request (CSR) using either the Microsoft Certificate Authority web enrollment service or OpenSSL method.

## Examples

### Example 1

```powershell
Invoke-RequestSignedCertificate -csrFilePath ".\certificates\sfo-vrli01.sfo.rainpole.io.csr" -outDirPath ".\certificates" -certificateAuthority "msca" -caFqdn "rainpole-ca01.rainpole.io" -username "Administrator" -password "VMw@re1!" -certificateTemplate "VMware"
```

This example will request the sfo-vrli01.sfo.rainpole.io Certificate Signing Request (CSR) file to be signed by the Certificate Authority rpl-ad01.rainpole.io.

### Example 2

```powershell
Invoke-RequestSignedCertificate -csrFilePath ".\certificates\sfo-vrli01.sfo.rainpole.io.csr" -outDirPath ".\certificates" -certificateAuthority "msca" -caFqdn "rainpole-ca01.rainpole.io" -username "Administrator" -password "VMw@re1!" -certificateTemplate "VMware" -getCArootCert
```

This example will request the sfo-vrli01.sfo.rainpole.io Certificate Signing Request (CSR) file to be signed by the Certificate Authority rpl-ad01.rainpole.io and will retrieve the Certificate Authority's root chain certificate.

### Example 3

```powershell
Invoke-RequestSignedCertificate -csrFilePath ".\certificates\sfo-vrli01.sfo.rainpole.io.csr" -outDirPath ".\certificates" -certificateAuthority "openssl" -caKeyPath ".\certificates\CAroot.key" -caCertPath ".\certificates\CAroot.pem" -expireDays 365
```

This example will request the sfo-vrli01.sfo.rainpole.io CSR file to be signed using OpenSSL and provided the Certificate Authority key and certificate.

### Example 4

```powershell
Invoke-RequestSignedCertificate -csrFilePath ".\certificates\sfo-vrli01.sfo.rainpole.io.csr" -outDirPath ".\certificates" -certificateAuthority "msca" -caFqdn "sfo-rainpole-ca01.sfo.rainpole.io" -username "Administrator" -password "VMw@re1!" -certificateTemplate "VMware" -getCArootCert
```

This example will request the sfo-vrli01.sfo.rainpole.io CSR file to be signed by the intermediate Certificate Authority sfo-rainpole-ca01.sfo.rainpole.io and will retrieve the Certificate Authority's full root chain certificate.

## Parameters

### -csrFilePath

The full file path for the certificate signing request file.

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

### -outDirPath

The directory path to store the signed certificate file.

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

### -certificateAuthority

The Certificate Authority (Microsoft Certificate Authority or OpenSSL) to be used by the function.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: msca, openssl
Accept wildcard characters: False
```

### -caKeyPath

The full file path for the Certificate Authority root private key.

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

### -caCertPath

The full file path for the Certificate Authority root certificate.

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

### -expireDays

The expiration days for the certificate to be signed.

```yaml
Type: Int
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 365
Accept pipeline input: False
Accept wildcard characters: False
```

### -caFqdn

The FQDN of the Microsoft Certificate Authority web enrollment service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -username

The username to authenticate to the Microsoft Certificate Authority web enrollment service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -password

The password to authenticate to the Microsoft Certificate Authority web enrollment service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificateTemplate

The name of the certificate template to be used. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -getCArootCert

Retrieve the Microsoft Certificate Authority root chain certificate. 

```yaml
Type: Switch
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
