# Add-vRLIAlertDatacenter

## Synopsis

Adds datacenter based alerts in VMware Aria Operations for Logs

## Syntax

```powershell
Add-vRLIAlertDatacenter [-server] <String> [-user] <String> [-pass] <String> [-sddcDomainName] <String>
 [-datacenterName] <String> [-email] <String> [-alertTemplate] <String> [-vropsIntegration]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRLIAlertsDatacenter` cmdlet adds datacenter based alerts to VMware Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the Datacenter object provided is valid in the vCenter Server inventory
- Creates the alert in VMware Aria Operations for Logs for the Datacenter object if not already configured
- Integrates with VMware Aria Operations if the -vropsIntegration switch is provided.

## Examples

### Example 1

```powershell
Add-vRLIAlertDatacenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomainName sfo-m01 -datacenterName sfo-m01-dc01 -email administrator@rainpole.io -alertTemplate ".\SampleNotifications\aria-operations-logs-alerts-datacenter-vcf.json" -vropsIntegration
```

This example adds the alerts provided in the JSON file.

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

The SDDC Manager administrator username.

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

The SDDC Manager administrator password.

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

### -sddcDomainName

The name of the workload domain to run against.

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

### -datacenterName

The Datacenter name.

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

### -email

The email address to send notifications to.

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

### -alertTemplate

The JSON file containing the alerts to be added.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vropsIntegration

Enables integration with VMware Aria Operations.

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
