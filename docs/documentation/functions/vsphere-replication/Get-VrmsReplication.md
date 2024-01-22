# Get-VrmsReplication

## Synopsis

Retrieves a list of replications from a vSphere Replication instance.

## Syntax

```powershell
Get-VrmsReplication [[-name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VrmsReplications` cmdlet retrieves a list of all replications from a vSphere Replication instance.

## Examples

### Example 1

```powershell
Get-VrmsReplications
```

This example retrieves a list of all replications from the vSphere Replication instance.

## Parameters

### -name

The name of the replication to target.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
