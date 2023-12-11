# Add-vROPSVcfCredential

## Synopsis

Adds a VMware Cloud Foundation Credential

## Syntax

```powershell
Add-vROPSVcfCredential [-server] <String> [-user] <String> [-pass] <String> [-serviceUser] <String>
 [-servicePassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSVcfCredential` cmdlet adds a VMware Cloud Foundation credential to VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the credential does not already exist in VMware Aria Operations
- Creates a VMware Cloud Foundation credentials in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSVcfCredential -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -serviceUser svc-iom-vcf@sfo.rainpole.io -servicePassword VMw@re1!
```

This example adds a VMware Cloud Foundation credential to VMware Aria Operations.

## Parameters

### -server

The IP address or FQDN of the SDDC Manager.

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

The username to authenticate to SDDC Manager.

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

The password to authenticate to SDDC Manager.

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

### -serviceUser

The username of the VMware Cloud Foundation service account.

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

### -servicePassword

The password of the VMware Cloud Foundation service account.

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
