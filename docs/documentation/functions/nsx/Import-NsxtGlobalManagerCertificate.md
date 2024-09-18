# Import-NsxtGlobalManagerCertificate

## Synopsis

Import a certificate to the NSX Global Manager.

## Syntax

```powershell
Import-NsxtGlobalManagerCertificate [-certificateAlias] <String> [-certChainPath] <String> [[-certificatePassphrase] <String>] [<CommonParameters>]
```

## Description

The `Import-NsxtGlobalManagerCertificate` cmdlet imports a certificate to the the NSX Global Manager.

## Examples

### Example 1

```powershell
Import-NsxtGlobalManagerCertificate -certificateAlias sfo-m01-nsx-gm01-cert -certChainPath ".\certificates\sfo-m01-nsx-gm01.sfo.rainpole.io.pem" -certificatePassphrase "VMw@re1!"
```

This example imports a certificate to the the NSX Global Manager.

## Parameters

### -certificateAlias

The alias of the certificate to add to the NSX Global Manager.

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

### -certChainPath

The path to the certificate chain file to add to the NSX Global Manager.

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

### -certificatePassphrase

The passphrase of the certificate to add to the NSX Global Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
