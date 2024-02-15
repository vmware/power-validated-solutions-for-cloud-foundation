# Invoke-GeneratePrivateKeyAndCsr

## Synopsis

Generate the private key and certificate signing request (CSR) files using OpenSSL with a common name and additional parameters as necessary.

## Syntax

```powershell
Invoke-GeneratePrivateKeyAndCsr [-outDirPath] <String> [-subjectAlternativeNames] <String> [-keySize] <Int>
 [-expireDays] <Int> [-organization] <String> [-organizationUnit] <String> [-locality] <String>
 [-state] <String> [-country] <String>
```

## Description

The `Invoke-GeneratePrivateKeyAndCsr` cmdlet generates the private key and certificate signing request (CSR) files using OpenSSL with a common name and additional parameters as necessary.

## Examples

### Example 1

```powershell
Invoke-GeneratePrivateKeyAndCsr -outDirPath "C:\certificates" -commonName "sfo-vrli01.sfo.rainpole.io" -subjectAlternativeNames "sfo-vrli01a.rainpole.io, sfo-vrli01b.rainpole.io, sfo-vrli01c.rainpole.io" -keySize 4096 -expireDays 720 -organization "rainpole" -organizationUnit "IT" -locality "San Francisco" -state "California" -country "US"
```

This example will generate a private key and CSR pair for VMware Aria Operations for Logs where the integrated load balancer has a common name of sfo-vrli01.sfo.rainpole.io and includes SANs for each cluster node's fully qualified domain name value. 

## Parameters

### -outDirPath

The directory path to store the signed certificate, private key, and certificate signing request file.

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

### -commonName

The common name for the signed certificate request.

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

### -subjectAlternativeNames

The subject alternative names (SAN) for the signed certificate request. Separate each SAN with comma.

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

### -keySize

The key size for the signed certificate request.

```yaml
Type: Int
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: 2048
Accept pipeline input: False
Accept wildcard characters: False
```

### -expireDays

The expiration days for the signed certificate request.

```yaml
Type: Int
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: 365
Accept pipeline input: False
Accept wildcard characters: False
```

### -organization

The organization for the signed certificate request.

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

### -organizationUnit

The organization unit for the signed certificate request.

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

### -locality

The locality for the signed certificate request.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -state

The state or province for the signed certificate request.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -country

The country code for the signed certificate request.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
