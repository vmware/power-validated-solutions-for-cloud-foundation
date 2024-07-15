# Enable-vRLIAlert

## Synopsis

Enables alerts in VMware Aria Operations for Logs

## Syntax

```powershell
Enable-vRLIAlert [-server] <String> [-user] <String> [-pass] <String> [-email] <String> [[-alertDefinition] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Enable-vRLIAlert` cmdlet enables alerts in VMware Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Enables the alert in VMware Aria Operations for Logs

## Examples

### Example 1

```powershell
Enable-vRLIAlert -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -email administrator@rainpole.io -alertDefinition ".\SampleNotifications\aria-operations-logs-alerts-vcf.json"
```

This example enables the alerts provided in the JSON file and configures an email address.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

### -email

The email address to send notifications to.

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

### -alertDefinition

The alert definition file to use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
