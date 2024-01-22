# Set-VrmsApplianceState

## Synopsis

Restart or shutdown the appliance.

## Syntax

```powershell
Set-VrmsApplianceState [-action] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VrmsApplianceState` cmdlet allows you to restart or shutdown the vSphere Replication appliance.

## Examples

### Example 1

```powershell
Set-VrmsApplianceState -action restart
```

This example restarts the vSphere Replication appliance

### Example 2

```powershell
Set-VrmsApplianceState -action stop
```

This example shutdown the vSphere Replication appliance.

## Parameters

### -action

The action parameter The action to be performed on the vSphere Replication appliance.

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
