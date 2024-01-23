# Get-SnapshotConsolidation

## Synopsis

Returns the status of a virtual machine's need for snapshot consolidation.

## Syntax

```powershell
Get-SnapshotConsolidation [-vm] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SnapshotConsolidation` cmdlet returns the status of a virtual machine's need for snapshot consolidation.

## Examples

### Example 1

```powershell
Get-SnapshotConsolidation -vm "foo"
```

This example returns the status of the snapshot consolidation for the virtual machine named "foo".

## Parameters

### -vm

The virtual machine name.

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
