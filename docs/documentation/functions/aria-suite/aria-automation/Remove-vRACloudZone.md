# Remove-vRACloudZone

## Synopsis

Remove Cloud Zones

## Syntax

```powershell
Remove-vRACloudZone [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRACloudZone` cmdlet deletes a Cloud Zones from VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRACloudZone -id <cloud_zone_id>
```

This example deletes a Cloud Zone from VMware Aria Automation by id.

## Parameters

### -id

The Cloud Zone id to delete.

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
