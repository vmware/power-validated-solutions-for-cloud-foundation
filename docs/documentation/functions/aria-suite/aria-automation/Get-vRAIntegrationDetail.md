# Get-vRAIntegrationDetail

## Synopsis

Get an integration detail of an item from VMware Aria Automation

## Syntax

```powershell
Get-vRAIntegrationDetail [-integrationType] <String> [[-integrationName] <String>] [-getVCID]
 [-getIntegrationID] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAIntegrationDetail` cmdlet returns an integration details of an item from VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -getVCID
```

This example returns the ids of the vCenter Server instances managed by the VMware Aria Operations

### Example 2

```powershell
Get-vRAIntegrationDetail -integrationType "vrops" -integrationName "VMware Aria Operations" -getIntegrationID
```

This example returns the integration id of "VMware Aria Operations" which is integrated with the VMwareAria Automation.

## Parameters

### -integrationType

The integration type to get details for, supports vrops.

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

### -integrationName

The integration name to get details for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -getVCID

Get the vCenter Server instance ids managed by the VMware Aria Operations.

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

### -getIntegrationID

Get the integration id of the integration name provided.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
