# Add-vROPSNsxCredential

## Synopsis

Adds an NSX Credential

## Syntax

### credential (Default)

```powershell
Add-vROPSNsxCredential -server <String> -user <String> -pass <String> -domain <String> [-serviceUser <String>]
 [-servicePassword <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### certificate

```powershell
Add-vROPSNsxCredential -server <String> -user <String> -pass <String> -domain <String> [-certificate]
 [-certificateData <String>] [-certificateKey <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Add-vROPSNsxCredential` cmdlet adds an NSX credential to VMware Aria Operations, this can be either a
regular user or a Principal Identity (certificate based).
The cmdlet connects to SDDC Manager using the
-server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the credential does not already exist in VMware Aria Operations
- Creates NSX credential in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSNsxCredential -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -serviceUser svc-iom-nsx@sfo.rainpole.io -servicePassword VMw@re1!
```

This example adds an NSX credential to VMware Aria Operations

### Example 2

```powershell
Add-vROPSNsxCredential -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -certificate -certificateData sfo-m01-nsx01.cer -certificateKey sfo-m01-nsx01.key
```

This example adds an NSX Principal Identity as a client certificate credential to VMware Aria Operations.

## Parameters

### -server

The IP address or FQDN of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -user

The username to authenticate to SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -pass

The password to authenticate to SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -domain

The name of the workload domain to add the NSX credential to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceUser

The username of the NSX service account.

```yaml
Type: String
Parameter Sets: credential
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -servicePassword

The password of the NSX service account.

```yaml
Type: String
Parameter Sets: credential
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificate

Switch to indicate that the NSX credential is a Principal Identity (certificate based).

```yaml
Type: SwitchParameter
Parameter Sets: certificate
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificateData

The path to the NSX certificate file (.cer).

```yaml
Type: String
Parameter Sets: certificate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificateKey

The path to the NSX certificate key file (.key).

```yaml
Type: String
Parameter Sets: certificate
Aliases:

Required: False
Position: Named
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
