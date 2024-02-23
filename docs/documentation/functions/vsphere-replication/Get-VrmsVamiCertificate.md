# Get-VrmsVamiCertificate

## Synopsis

Get the certificate information from the vSphere Replication appliance.

## Syntax

``` powershell
Get-VrmsVamiCertificate [-caCertificate] [<CommonParameters>]
```

## Description

The `Get-VrmsVamiCertificate` cmdlet retrieves certificate information from the VAMI interface of a vSphere Replication appliance.

## Examples

### Example 1

``` powershell
Get-VrmsVamiCertificate
```

This example retrieves the certificate information for the vSphere Replication appliance.

### Example 2

``` powershell
Get-VrmsVamiCertificate -caCertificate
```

This example retrieves a list of Certificate Authority certificates installed in the vSphere Replication appliance.

## Parameters

### -caCertificate

The caCertificate parameter will retrieve Certificate Authority certificates installed.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
