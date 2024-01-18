# Set-SrmRecoveryPlanVMPriority

## Synopsis

Change the startup priority for virtual machines in a named recovery plan from a Site Recovery Manager instance.

## Syntax

```powershell
Set-SrmRecoveryPlanVMPriority [-rpName] <String> [-vmName] <String> [-priority] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmRecoveryPlanVMPriority` cmdlet changes the startup priority for virtual machines in a named recovery plan from a Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Set-SrmRecoveryPlanVMPriority -rpName xint-vrops01-rp -vmName xint-vrops01a -priority P3
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

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -priority

The priority (1-5) level to set the virtual machine.

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
