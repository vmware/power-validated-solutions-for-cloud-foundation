# Get-VrmsVm

## Synopsis

Retrieves a list of all VMs from a vSphere Replication instance.

## Syntax

```powershell
Get-VrmsVm [[-vmName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VrmsVm` cmdlet retrieves a list of all VMs from a vSphere Replication instance.

## Examples

### Example 1

```powershell
Get-VrmsVm
```

This example retrieves a list of all VMs from the vSphere Replication instance.

## Parameters

### -vmName

The name of the optional virtual machine to target.

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
