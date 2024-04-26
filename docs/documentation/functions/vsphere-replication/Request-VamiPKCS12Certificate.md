# Request-VamiPKCS12Certificate

## Synopsis

Request signed certificate in PKCS12 (.pfx) format for the VAMI Interface

## Syntax

```powershell
Request-VamiPKCS12Certificate [-jsonFile] <String> [-certificates] <String> [-solution] <String> [<CommonParameters>]
```

## Description

The `Request-VamiPKCS12Certificate` cmdlet requests a signed certificate in PKCS12 (.pfx) format for the VAMI Interface from a Microsoft Certificate Authority using the details from the a JSON specification file.

## Examples

### Exmaple 1

```powershell
Request-VamiPKCS12Certificate -jsonFile .\pdrDeploySpec.json -certificates .\certificates\ -solution VRMS
```

This example requests a signed certificate in PKCS12 (.pfx) format for a vSphere Replication appliance.

### Example 2

```powershell
Request-VamiPKCS12Certificate -jsonFile .\pdrDeploySpec.json -certificates .\certificates\ -solution SRM
```

This example requests a signed certificate in PKCS12 (.pfx) format for a Site Recovery Manager.

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

### -solution

{{ Fill solution Description }}

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
