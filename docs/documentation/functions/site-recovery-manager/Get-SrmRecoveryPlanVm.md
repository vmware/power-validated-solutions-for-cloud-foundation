# Get-SrmRecoveryPlanVm

## Synopsis

Change the startup priority for virtual machines in a named recovery plan from a Site Recovery Manager instance.

## Syntax

```powershell
Get-SrmRecoveryPlanVm [-rpName] <String> [[-vmName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmRecoveryPlanVm` cmdlet changes the startup priority for virtual machines in a named Recovery
Plan from a Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Get-SrmRecoveryPlanVm -rpName xint-vrops01-rp -vmName xint-vrops01a
```

This example sets virtual machine xint-vrops01a in recovery plan xint-vrops01-rp to startup priority 3 from a Site Recovery Manager instance.

## Parameters

### -rpName

The name of the recovery plan to modify.

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

### -vmName

Name of virtual machine(s) to target.

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
