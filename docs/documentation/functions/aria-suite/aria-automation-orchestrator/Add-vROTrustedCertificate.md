# Add-vROTrustedCertificate

## Synopsis

Adds a trusted certificate to an embedded VMware Aria Automation Orchestrator

## Syntax

```powershell
Add-vROTrustedCertificate [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String>
 [-vraPass] <String> [[-certFile] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROTrustedCertificate` cmdlet invokes a workflow in VMware Aria Automation Orchestrator to add trusted
certificate.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values and then:

- Makes a connection to the embedded VMware Aria Automation Orchestrator using the -vraUser and -vraPass values
- Verifies the workflow exists
- Adds the trusted certificate using the -certFile value.

## Examples

### Example 1

```powershell
Add-vROTrustedCertificate -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vraUser configadmin -vraPass VMw@re1! -certFile "C:\Root64.pem"
```

This example adds a trusted certificate in PEM-encoded format to the embedded VMware Aria Automation Orchestrator.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username to authenticate to the SDDC Manager.

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

### -pass

The password to authenticate to the SDDC Manager.

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

### -vraUser

The VMware Aria Automation user account to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vraPass

The VMware Aria Automation user password to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
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
Position: 6
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
