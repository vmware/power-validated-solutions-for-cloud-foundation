# Request-IlaMscaSignedCertificate

## Synopsis

Request signed certificate for VMware Aria Operations for Logs

## Syntax

```powerShell
Request-IlaMscaSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Request-IlaMscaSignedCertificate` cmdlet requests a signed certificate for VMware Aria Operations for Logs from a Microsoft Certificate Authority using the details from the Intelligent Logging and Analytics JSON specification file.

## Examples

### Example 1

```powerShell
Request-IlaMscaSignedCertificate -jsonFile .\ilaDeploySpec.json -certificates .\certificates\
```

This example request a signed certificate for VMware Aria Operations for Logs.

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
