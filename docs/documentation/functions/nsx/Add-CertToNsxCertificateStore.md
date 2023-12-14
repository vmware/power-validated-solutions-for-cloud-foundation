# Add-CertToNsxCertificateStore

## Synopsis

Adds a Certificate to the NSX Certificate Store

## Syntax

```powershell
Add-CertToNsxCertificateStore [-certName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-CertToNsxCertificateStore` cmdlet adds a Certificate to the NSX Certificate Store.

## Examples

### Example 1

```powershell
Add-CertToNsxCertificateStore -certName sfo-w01-ec01-xreg-wsa
```

This example adds a Certificate to the NSX Certificate Store.

## Parameters

### -certName

The name of the Certificate.

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

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
