# Invoke-NsxFederationDeployment

## Synopsis

End-to-end Deployment of NSX Federation.

## Syntax

```powershell
Invoke-NsxFederationDeployment [-jsonFile] <String> [-certificates] <String> [-binaries] <String> [<CommonParameters>]
```

## Description

The `Invoke-NsxFederationDeployment` cmdlet is a single function to implement the configuration of NSX Federation on VMware Cloud Foundation instances.

## Examples

### Example 1

```powershell
Invoke-NsxFederationDeployment -jsonFile ./nsxFederationDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures NSX Federation using the JSON spec supplied.

## Parameters

### -jsonFile

The JSON (.json) file created.

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

### -binaries

The fully qualified path to the binaries directory.

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
