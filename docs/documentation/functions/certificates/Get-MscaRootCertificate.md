# Get-MscaRootCertificate

## Synopsis

Get the root certificate from the Microsoft Certificate Authority.

## Syntax

```powershell
Get-MscaRootCertificate [-outDirPath] <String> [-caFqdn] <String> [-username] <String>  [-password] <String> [-fullChain] <Switch> [-format] <String>
```

## Description

The `Get-MscaRootCertificate` cmdlet retrieves the root certificate from the Microsoft Certificate Authority.  It will also retrieve the full root certificate chain from the Microsoft Certificate Authority if the Microsoft Certificate Authority is an intermediate certificate authority.

## Examples

### Example 1

```powerShell
Get-MscaRootCertificate -caFqdn "rpl-dc01.rainpole.io" -username "Administrator" -password "VMw@re1!" -outDirPath ".\certificates" -format "cer"
```

This example will request the root certificate from the Microsoft Certificate Authority (rpl-dc01.rainpole.io) in base64 encoding with file a extension of .cer

### Example 2

```powerShell
Get-MscaRootCertificate -caFqdn "sfo-dc01.sfo.rainpole.io" -username "Administrator" -password "VMw@re1!" -outDirPath ".\certificates" -format "pem" -fullChain
```

This example will request the full root certificate chain from the intermediate Microsoft Certificate Authority (sfo-dc01.sfo.rainpole.io) in base64 encoding with a file extension of .pem

## Parameters

### -outDirPath

The directory path to store the signed certificate file.

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

### -caFqdn

The FQDN of the Microsoft Certificate Authority web enrollment service.

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

### -username

The username to authenticate to the Microsoft Certificate Authority web enrollment service.

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

### -password

The password to authenticate to the Microsoft Certificate Authority web enrollment service.

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

### -fullChain

The option to retrieve the full root certificate chain instead of just the root certificate.

```yaml
Type: Switch
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -format

The file extension for the root certificate file.

```yaml
Type: String
Parameter Sets: ("cer", "pem")
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
