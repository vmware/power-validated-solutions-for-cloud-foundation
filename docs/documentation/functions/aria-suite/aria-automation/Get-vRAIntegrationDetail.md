# Get-vRAIntegrationDetail

## Synopsis

Get an integration detail of an item from VMware Aria Automation.

## Syntax

### Status (Default)

```powershell
Get-vRAIntegrationDetail -integrationType <String> [-integrationName <String>] [-getStatus] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ID

```powershell
Get-vRAIntegrationDetail -integrationType <String> [-integrationName <String>] [-getVCID] [-getIntegrationID]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAIntegrationDetail` cmdlet returns an integration details of an item from VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -getVCID
```

This example returns the ids of the vCenter Server instances managed by the VMware Aria Operations.

### Example 2

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -integrationName "VMware Aria Operations" -getIntegrationID
```

This example returns the integration id of "VMware Aria Operations" which is integrated with the VMware Aria Automation.


### Example 3

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -getStatus
```
This example returns the integration status of all VMware Aria Operations integrations in VMware Aria Automation.

### Example 4

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -integrationName "VMware Aria Operations" -getStatus
```

This example returns the integration status of "VMware Aria Operations" which is integrated with the VMware Aria Automation.

## PARAMETERS

### -integrationType

The integration type to get details for. One of `vrops` or `vro`.

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

### -integrationName

The integration name to get details for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -getVCID

Get the vCenter Server instance ids managed by the VMware Aria Operations.

```yaml
Type: SwitchParameter
Parameter Sets: ID
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -getIntegrationID

Get the integration id of the integration name provided.

```yaml
Type: SwitchParameter
Parameter Sets: ID
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -getStatus

Get the status of the integration type and/or name provided.

```yaml
Type: SwitchParameter
Parameter Sets: Status
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
