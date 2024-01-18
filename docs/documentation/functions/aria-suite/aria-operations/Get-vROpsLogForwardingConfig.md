# Get-vROpsLogForwardingConfig

## Synopsis

Gets the VMware Aria Operations log forwarding configuration.

## Syntax

```powershell
Get-vROpsLogForwardingConfig [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROpsLogForwardingConfig` cmdlet gets the VMware Aria Operations logging forwarding configuration.
The cmdlet connects to SDDC Manager using the -server, -user, -password, and -domain values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Gets the VMware Aria Operations logging forwarding configuration.

## Examples

### Example 1

```powershell
Get-vROpsLogForwardingConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example returns the log forwarding configuration on VMware Aria Operations.

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
