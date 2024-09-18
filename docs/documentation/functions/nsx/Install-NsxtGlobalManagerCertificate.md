# Install-NsxtGlobalManagerCertificate

## Synopsis

Install a certificate for the NSX Global Manager.

## Syntax

```powershell
Install-NsxtGlobalManagerCertificate [-server] <String> [-user] <String> [-pass] <String> [-certificateName] <String> [-certFile] <String> [[-certificatePassphrase] <String>] [<CommonParameters>]
```

## Description

The `Install-NsxtGlobalManagerCertificate` cmdlet installs a certificate for the NSX Global Manager.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given certificate file and certificate name.
- Installs the certificate for the NSX Global Manager.

## Examples

### Example 1

```powershell
Install-NsxtGlobalManagerCertificate  -server lax-m01-nsx-gm01.lax.rainpole.io -user admin -pass VMw@re1!VMw@re1! -certificateName "lax-m0123" -certFile .\certificates\lax-m01-nsx-gm01.lax.rainpole.io.pem
```

This example installs a certificate for the NSX Global Manager.

### Example 2

```powershell
Install-NsxtGlobalManagerCertificate  -server lax-m01-nsx-gm01.lax.rainpole.io -user admin -pass VMw@re1!VMw@re1! -certificateName "lax-m0123" -certFile .\certificates\lax-m01-nsx-gm01.lax.rainpole.io.pem -certificatePassphrase "VMw@re1!"
```

This example installs a certificate for the NSX Global Manager.

## Parameters

### -server

The fully qualified domain name of the NSX Global Manager.

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

The username to authenticate to the NSX Global Manager.

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

The password to authenticate to the NSX Global Manager.

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

### -certificateName

The name of the certificate to add to the NSX Global Manager.

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

### -certFile

The path to the certificate file to add to tthe NSX Global Manager.

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

### -certificatePassphrase

The passphrase of the certificate to add to the NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
