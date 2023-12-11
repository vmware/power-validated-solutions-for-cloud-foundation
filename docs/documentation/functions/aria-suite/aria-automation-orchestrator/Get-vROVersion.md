# Get-vROVersion

## Synopsis

Retrieve the VMware Aria Automation Orchestrator version details

## Syntax

### embedded (Default)

```powershell
Get-vROVersion [-embedded] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### standalone

```powershell
Get-vROVersion [-standalone] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### extensibility

```powershell
Get-vROVersion [-extensibility] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROVersion` cmdlet retrieves the VMware Aria Automation Orchestrator version information.
It supports
the following: (Requires an access token before a connection can be made)

- Standalone VMware Aria Automation Orchestrator
- Embedded VMware Aria Automation Orchestrator with VMware Aria Automation
- Cloud Extensibility Proxy with VMware Aria Automation Orchestrator.

## Examples

### Example 1

```powershell
Get-vROVersion -standalone
```

This examples retrieves the version details from a standlaone VMware Aria Automation Orchestrator appliance

### Example 2

```powershell
Get-vROVersion -embedded
```

This examples retrieves the version details from an embedded VMware Aria Automation Orchestrator instance running within the VMware Aria Automation appliances.

### Example 3

```powershell
Get-vROVersion -extensibility
```

This examples retrieves the version details from a VMware Aria Automation Orchestrator instance running within the Cloud Extensibility Proxy appliance.

## Parameters

### -standalone

Connect to a standalone VMware Aria Automation Orchestrator appliance.

```yaml
Type: SwitchParameter
Parameter Sets: standalone
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -embedded

Connect to an embedded VMware Aria Automation Orchestrator instance running within the VMware Aria Automation appliances.

```yaml
Type: SwitchParameter
Parameter Sets: embedded
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -extensibility

Connect to a VMware Aria Automation Orchestrator instance running within the Cloud Extensibility Proxy appliance.

```yaml
Type: SwitchParameter
Parameter Sets: extensibility
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
