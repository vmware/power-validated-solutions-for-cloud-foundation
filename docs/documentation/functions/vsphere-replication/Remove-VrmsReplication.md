# Remove-VrmsReplication

## Synopsis

Removes a vSphere Replication for the specified virtual machine.

## Syntax

```powershell
Remove-VrmsReplication [-vmName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-VrmsReplication` cmdlet removes a vSphere Replication for the specified virtual machine.

## Examples

### Example 1

```powershell
Remove-VrmsReplication -vmName xint-vrslcm01
```

This example removes the replication for virtual machine xint-vrslcm01 from the vSphere Replication instance.

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
