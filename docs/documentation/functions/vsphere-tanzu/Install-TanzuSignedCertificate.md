# Install-TanzuSignedCertificate

## Synopsis

Install a Microsoft Certificate Authority Signed Certificate for the Tanzu Supervisor Cluster

## Syntax

```powershell
Install-TanzuSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Install-TanzuSignedCertificate` cmdlet requests a signed certificate for the Tanzu Supervisor Cluster from a Microsoft Certificate Authority using the details from the Developer Ready Infrastructure JSON specification file.

## Examples

### Example 1

```powershell
Install-TanzuSignedCertificate -jsonFile .\driDeploySpec.json -certificates .\certificates\
```

This example requests and installs a signed certificate for the Tanzu Supervisor Cluster.

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

The path to the folder where to store the certificate files.

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
