# Add-VrmsReplication

## Synopsis

Adds a vSphere Replication for the specified virtual machine

## Syntax

```powershell
Add-VrmsReplication [-vmName] <String> [-recoveryPointObjective] <Int32> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-VrmsReplication` cmdlet adds a vSphere Replication for the specified virtual machine

## Examples

### Example 1

```powershell
Add-VrmsReplication -vmName xint-vrslcm01 -recoveryPointObjective 1440
```

This example adds a vSphere Replication for virtual machine xint-vrslcm01 to the vSphere Replication instance.

## Parameters

### -vmName

The name of the virtual machine to target.

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

### -recoveryPointObjective

The number of minutes, within a range of 5 to 1440 (one day), to define the RPO for the new replication.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
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
