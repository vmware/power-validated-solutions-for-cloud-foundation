# Get-VrmsConfiguration

## Synopsis

Get registration

## Syntax

### default (Default)

```powershell
Get-VrmsConfiguration [-reconfigure] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### reconfigure

```powershell
Get-VrmsConfiguration [-reconfigure] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### replication

```powershell
Get-VrmsConfiguration [-replication] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VrmsConfiguration` cmdlet retrieves registration configuration for a vSphere Replication appliance.

## Examples

### Example 1

```powershell
Get-VrmsConfiguration
```

This example retrieves the registration configuration for the vSphere Replication appliance

### Example 2

```powershell
Get-VrmsConfiguration -reconfigure
```

This example retrieves the reconfiguration status for the vSphere Replication appliance

### Example 3

```powershell
Get-VrmsConfiguration -replication
```

This example retrieves the storage replication configuration for the vSphere Replication appliance.

## Parameters

### -reconfigure

The reconfigure parameter The reconfiguration status for the vSphere Replication appliance.

```yaml
Type: SwitchParameter
Parameter Sets: default, reconfigure
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -replication

The replication parameter The storage replication configuration for the vSphere Replication appliance.

```yaml
Type: SwitchParameter
Parameter Sets: replication
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
