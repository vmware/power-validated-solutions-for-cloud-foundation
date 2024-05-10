# Request-WSAMscaSignedCertificate

## Synopsis

Request signed certificate for Workspace ONE Access.

## Syntax

```powershell
Request-WSAMscaSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Request-WSAMscaSignedCertificate` cmdlet requests a signed certificate for Workspace ONE Access from a Microsoft Certificate Authority using the details from the Workspace ONE Access JSON specification file.

## Examples

### Example 1

```powershell
Request-WSAMscaSignedCertificate -jsonFile .\wsaDeploySpec.json -certificates .\certificates\
```

This example verifies the prerequisites for Workspace ONE Access.

## Paramters

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
