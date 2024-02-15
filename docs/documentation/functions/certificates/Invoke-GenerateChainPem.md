# Invoke-GenerateChainPem

## Synopsis

Combine private key, signed certificate and/or root certificate chain into a single PEM file.

## Syntax

```powershell
Invoke-GenerateChainPem [-outDirPath] <String> [-keyFilePath] <String> [-crtFilePath] <String>
 [-rootCaFilePath] <String>
```

## Description

The `Invoke-GenerateChainPem` cmdlet takes in private key, signed certificate and/or root certificate files and combine them into a single PEM file.

## Examples

### Example 1

```powershell
Invoke-GenerateChainPem -outDirPath "C:\certificates" -keyFilePath "C:\certificates\sfo-vrli01.sfo.rainpole.io.key" -crtFilePath "C:\certificates\sfo-vrli01.sfo.rainpole.io.crt" -rootCaFilePath "C:\certificates\rpl-ad01.rainpole.io-rootCA.pem"
```

This example will combine sfo-vrli01's private key, signed certificate and rpl0-ad01's root chain certificate into single sfo-vrli01.bundle.pem file. 

### Example 2

```powershell
Invoke-GenerateChainPem -outDirPath "C:\certificates" -crtFilePath "C:\certificates\sfo-vrli01.sfo.rainpole.io.crt" -rootCaFilePath "C:\certificates\sfo-rainpole-ca01.sfo.rainpole.io-rootCA.pem"
```

This example will combine sfo-vrli01's signed certificate and sfo-rainpole-ca01's root chain certificate into single sfo-vrli01.bundle.pem file.

### Example 3

```powershell
Invoke-GenerateChainPem -outDirPath "C:\certificates" -keyFilePath "C:\certificates\sfo-vrli01.sfo.rainpole.io.key" -crtFilePath "C:\certificates\sfo-vrli01.sfo.rainpole.io.crt"
```

This example will combine sfo-vrli01's private key and signed certificate into single sfo-vrli01.bundle.pem file.

## Parameters

### -outDirPath

The directory path to store the combined certificate bundle file.

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

### -keyFilePath

The full file path for the private key file. 

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

### -crtFilePath

The full file path for the signed certificate file.

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

### -rootCaFilePath

The full file path for the Microsoft Certificate Authority root certificate file.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
