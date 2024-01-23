# Remove-DrsVmToVmGroup

## Synopsis

Remove a vSphere VM to VM Group

## Syntax

```powershell
Remove-DrsVmToVmGroup [-name] <String> [-cluster] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-DrsVmToVmGroup` cmdlet removes a vSphere VM to VM Group.

## Examples

### Example 1

```powershell
Remove-DrsVmToVmGroup -name vm-vm-rule-wsa-vrli -cluster sfo-m01-cl01
```

This example shows how to remove a vSphere VM to VM group from vCenter Server.

## Parameters

### -name

The name of the VM to VM group.

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

### -cluster

The name of the cluster.

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
