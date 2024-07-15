# Add-DrsVmToVmGroup

## Synopsis

Creates a vSphere VM to VM Group

## Syntax

```powershell
Add-DrsVmToVmGroup [-name] <String> [-vmGroup] <String> [-dependOnVmGroup] <String> [-cluster] <String> [-enabled] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-DrsVmToVmGroup` cmdlet creates a vSphere VM to VM Group.

## Examples

### Example 1

```powershell
Add-DrsVmToVmGroup -name vm-vm-rule-wsa-vra -vmGroup sfo-m01-vm-group-wsa -dependOnVmGroup sfo-m01-vm-group-vra -Enabled -cluster sfo-m01-cl01
```

This example shows how to create a vSphere VM to VM group in the vCenter Server.

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

### -vmGroup

The name of the VM group.

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

### -dependOnVmGroup

The name of the VM group to depend on.

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

### -cluster

The name of the cluster.

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

### -enabled

The enabled flag.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: True
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
