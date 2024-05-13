# Request-IamMscaSignedCertificate

## Synopsis

Request Microsoft Certificate Authority Root Certificate.

## Syntax

```powershell
Request-IamMscaSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Request-IamMscaSignedCertificate` cmdlet requests the Microsoft Certificate Authority Root Certificate using the details from the Identity and Access Management JSON specification file.

## Examples

### Example 1

```powershell
Request-IamMscaSignedCertificate -jsonFile .\iamDeploySpec.json -certificates .\certificates\
```

This example requests the Microsoft Certificate Authority Root Certificate.

## Parameters

### -jsonFile

The path to the JSON specification file.

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

### -certificates

The path to the store the certificate files.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
