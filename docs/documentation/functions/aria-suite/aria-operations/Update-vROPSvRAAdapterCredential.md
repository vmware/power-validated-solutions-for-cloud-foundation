# Update-vROPSvRAAdapterCredential

## Synopsis

Update the credential of VMware Aria Automation adapter in VMware Aria Operations

## Syntax

```powershell
Update-vROPSvRAAdapterCredential [-server] <String> [-user] <String> [-pass] <String> [-credentialUsername] <String> [-credentialPassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vROPSvRAAdapterCredential` cmdlet update the credential of VMware Aria Automation adapter in VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that VMware Aria Automation has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity is possible to VMware Aria Automation
- Validates that the VMware Aria Automation adapter exists and configured in VMware Aria Operations
- Validates that the credential name of VMware Aria Automation adapter does not already exist in VMware Aria Operations
- Validates that the given credential is valid and updates VMware Aria Automation adapter in VMware Aria Operations
- Verifies the VMware Aria Automation adapter status in VMware Aria Operations after updating the credential

## Examples

### Example 1

```powershell
Update-vROPSvRAAdapterCredential -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -credentialUsername svc-vrops-vra@sfo.rainpole.io -credentialPassword VMw@re1!
```

This example update the credential of VMware Aria Automation adapter in VMware Aria Operations.

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

### -credentialUsername

The credential user name.

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

### -credentialPassword

The credential password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
