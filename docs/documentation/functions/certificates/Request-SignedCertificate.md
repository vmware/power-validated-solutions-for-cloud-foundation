# Request-SignedCertificate

## Synopsis

Request a Signed Certificate from a Microsoft Enterprise Certificate Authority by providing generated
Certificate Signing Request (CSR) file.

## Syntax

```powershell
Request-SignedCertificate [-mscaComputerName] <String> [-mscaName] <String> [-domainUsername] <String>
 [-domainPassword] <String> [[-certificateTemplate] <String>] [-certificateRequestFile] <String>
 [-certificateFile] <String> [-SkipValidation] [-ValidateOnly] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-SignedCertificate` cmdlet requests a Signed Certificate from a Microsoft Enterprise Certificate
Authority by providing Certificate Signing Request (CSR) file.
Issued certificate is written to Base64-encoded
output file.

## Examples

### Example 1

```powershell
Request-SignedCertificate -mscaComputerName dc-rpl01.rainpole.io -mscaName rainpole-DC-RPL01-CA -domainUsername "administrator@rainpole.io" -domainPassword "VMw@re1!" -certificateTemplate VMware -certificateRequestFile "c:\temp\SupervisorCluster.csr" -CertificateFile "c:\temp\SupervisorCluster.cer" 
```

This example requests a Signed Certificate from a Microsoft Enterprise Certificate Authority providing certificate signing request in file "c:\temp\SupervisorCluster.csr" and if the CA policy is configured to automaticaly issue certificate the certificate will be issued to Base64-encoded output file "c:\temp\SupervisorCluster.cer".

## Parameters

### -mscaComputerName

The IP address or FQDN of the Microsoft Enterprise Certificate Authority.

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

### -mscaName

The name of the Microsoft Enterprise Certificate Authority.

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

### -domainUsername

The username of the domain account with permissions to request a certificate from the Microsoft Enterprise Certificate Authority.

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

### -domainPassword

The password of the domain account with permissions to request a certificate from the Microsoft Enterprise Certificate Authority.

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

### -certificateTemplate

The name of the certificate template to use when requesting a certificate from the Microsoft Enterprise Certificate Authority.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: Webserver
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificateRequestFile

The path to the certificate signing request file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificateFile

The path to the Base64-encoded output file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipValidation

Skip pre-validation checks.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidateOnly

Only perform pre-validation checks.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
