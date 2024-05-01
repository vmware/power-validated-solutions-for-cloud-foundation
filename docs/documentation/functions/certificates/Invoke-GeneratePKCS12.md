# Invoke-GeneratePKCS12

## Synopsis

Generate a PKCS12 (.pfx) file using OpenSSL.

## Syntax

```powershell
Invoke-GeneratePKCS12 [-certificatePath] <String> [-privateKeyFile] <String> [-certificateFile] <String> [-certificatePassword] <String> [[-caChainFile] <String>] [<CommonParameters>]
```

## Description

The `Invoke-GeneratePKCS12` cmdlet generates a PKCS12 (.pfx) file using OpenSSL with the supplied Private Key (.key), Signed Certificate (.crt) files.

## Examples

### Example 1

```powershell
Invoke-GeneratePKCS12 -certificatePath ".\certificates\" -privateKeyFile "sfo-m01-vrms01.sfo.rainpole.io.key" -certificateFile "sfo-m01-vrms01.sfo.rainpole.io.crt" -certificatePassword VMw@re1! -caChainFile "rpl-ad01.rainpole.io-rootCA.pem"
```

This example will generate a PFX file for sfo-m01-vrms01.sfo.rainpole.io including the Root Certificate Authority.

### Example 2

```powershell
Invoke-GeneratePKCS12 -certificatePath ".\certificates\" -privateKeyFile "sfo-m01-vrms01.sfo.rainpole.io.key" -certificateFile "sfo-m01-vrms01.sfo.rainpole.io.crt" -certificatePassword VMw@re1!
```

This example will generate a PFX file for sfo-m01-vrms01.sfo.rainpole.io wihtou the Root Certificate Authority.

## Parameters

### -certificatePath

The directory path to store the PKCS12 (.pfx) file and retrieve the Private Key (.key), Signed Certifciate (.crt) and Certificate Authority Chain (.pem) files from.

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

### -privateKeyFile

The private key (.key) file.

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

### -certificateFile

The certificate file (.crt) file.

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

### -certificatePassword

{{ Fill certificatePassword Description }}

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

### -caChainFile

The certificate authority chain (.pem) file.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
