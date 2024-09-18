# Add-NsxtGlobalManagerCertificate

## Synopsis

Install a certificate in the NSX Global Manager.

## Syntax

```powershell
Add-NsxtGlobalManagerCertificate [-old_certificate_id] <String> [-new_certificate_id] <String> [<CommonParameters>]
```

## Description

The `Add-NsxtGlobalManagerCertificate` cmdlet installs a certificate in the NSX Global Manager.

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerCertificate -old_certificate_id 7f3561c7-4630-42fb-ae1e-54abe0945254 -new_certificate_id f64fe940-9569-4621-940f-90ea2adafd93
```

This example installs a certificate in the NSX Global Manager.

## Parameters

### -old_certificate_id

The ID of the old certificate.

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

### -new_certificate_id

The ID of the new certificate.

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
