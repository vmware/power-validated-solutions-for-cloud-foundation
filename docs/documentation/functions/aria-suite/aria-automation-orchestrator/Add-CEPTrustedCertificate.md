# Add-CEPTrustedCertificate

## Synopsis

Adds a trusted certificate to an embedded VMware Aria Automation Orchestrator.

## Syntax

```powershell
Add-CEPTrustedCertificate [-extensibilityProxy] <String> [-environment] <String> [-apiToken] <String>
 [[-certFile] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROTrustedCertificateOnCEP` cmdlet invokes a workflow in VMware Aria Automation Orchestrator to add
trusted certificate.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values
and then:

- Makes a connection to the embedded VMware Aria Automation Orchestrator using the -vraUser and -vraPass values.
- Verifies the workflow exists.
- Adds the trusted certificate using the -certFile value.

## Examples

### Example 1

```powershell
Add-CEPTrustedCertificate -extensibilityProxy sfo-vmc-cep01.sfo.rainpole.io -environment staging -apiToken <string> -certFile "C:\Root64.pem"
```

This example adds a trusted certificate in PEM-encoded format to the Cloud Extensibility Proxy VMware Aria Automation Orchestrator instance.

## Parameters

### -extensibilityProxy

The Cloud Extensibility Proxy FQDN or IP address.

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

### -environment

The VMware Cloud Services environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: Production
Accept pipeline input: False
Accept wildcard characters: False
```

### -apiToken

The VMware Cloud Services API token.

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

### -certFile

The trusted certificate file in PEM-encoded format.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
