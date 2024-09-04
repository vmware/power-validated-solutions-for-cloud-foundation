# Request-NsxFederationMscaSignedCertificate

## Synopsiss

Request signed certificate for NSX Federation.

## SYNTAX

```powershell
Request-NsxFederationMscaSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Request-NsxFederationMscaSignedCertificate` cmdlet requests a signed certificate for NSX Global Managers from a Microsoft Certificate Authority using the details from the NSX Federation JSON specification file.

## Examples

### Example 1

```powershell
Request-NsxFederationMscaSignedCertificate -jsonFile .\nsxFederationDeploySpec.json -certificates .\certificates\
```

This example request a signed certificates for NSX Global Managers.

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

The folder containing the certificates.

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
