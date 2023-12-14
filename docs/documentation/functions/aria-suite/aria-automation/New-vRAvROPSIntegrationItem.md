# New-vRAvROPSIntegrationItem

## Synopsis

Creates new VMware Aria Operations integration in VMware Aria Automation

## Syntax

```powershell
New-vRAvROPSIntegrationItem [-server] <String> [-user] <String> [-pass] <String> [-vraUser] <String>
 [-vraPass] <String> [-vropsIntegrationUser] <String> [-vropsIntegrationPass] <String>
 [-vropsIntegrationName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRAvROPSIntegrationItem` cmdlet creates an integration in VMware Aria Automation.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Automation has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Automation
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Creates VMware Aria Operations integration in VMware Aria Automation.

## Examples

### Example 1

```powershell
New-vRAvROPSIntegrationItem -server "sfo-vcf01.sfo.rainpole.io" -user "administrator@vsphere.local" -pass "VMw@re1!"  -vraUser "configadmin@rainpole.io" -vraPass "VMw@re1!" -vropsIntegrationUser  "svc-vrops-vra@sfo.rainpole.io@vIDMAuthSource" -vropsIntegrationPass "VMw@re1!" -vropsIntegrationName "VMware Aria Operations"
```

This example creates VMware Aria Operations integration with name "VMware Aria Operations" in VMware Aria Automation.

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

The VMware Aria Automation user name.

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

The VMware Aria Automation password.

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

### -vropsIntegrationUser

The VMware Aria Operations integration user name.

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

### -vropsIntegrationPass

The VMware Aria Operations integration password.

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

### -vropsIntegrationName

The VMware Aria Operations integration name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
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
