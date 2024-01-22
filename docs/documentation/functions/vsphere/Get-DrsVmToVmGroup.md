# Get-DrsVmToVmGroup

## Synopsis

Gets all vSphere VM to VM Group

## Syntax

```powershell
Get-DrsVmToVmGroup [[-name] <String>] [-cluster] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-DrsVmToVmGrou` cmdlet retrieves the vSphere VM to VM Group.

## Examples

### Example 1

```powershell
Get-DrsVmToVmGroup -name vm-vm-rule-wsa-vra -cluster sfo-m01-cl01
```

This example shows how to retrieve a vSphere VM to VM group in the vCenter Server.

## Parameters

### -name

The name of the VM to VM group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
