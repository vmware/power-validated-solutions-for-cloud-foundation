# Request-vROPSMscaSignedCertificate

## Synopsis

Request signed certificate for VMware Aria Operations

## Syntax

```powerShell
Request-vROPSMscaSignedCertificate [-jsonFile] <String> [-certificates] <String> [<CommonParameters>]
```

## Description

The `Request-vROPSMscaSignedCertificate` cmdlet requests a signed certificate for VMware Aria Operations from a Microsoft Certificate Authority using the details from the Intelligent Operations Management JSON specification file.

## Examples

### Example 1

```powerShell
Request-vROPSMscaSignedCertificate -jsonFile .\iomDeploySpec.json -certificates .\certificates\
```

This example verifies the prerequisites for Intelligent Operations Management.

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

{{ Fill certificates Description }}

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
