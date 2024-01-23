# Get-NsxtComputeManagerStatus

## Synopsis

Get the status of a compute manager registered to the NSX Manager cluster.

## Syntax

```powershell
Get-NsxtComputeManagerStatus [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtComputeManagerStatus` cmdlet returns the status of a compute manager registered to the NSX Manager cluster.

## Examples

### Example 1

```powershell
Get-NsxtComputeManagerStatus [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

This example returns the status of a compute manager registered to the NSX Manager cluster.

## Parameters

### -id

The id of the compute manager.

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
