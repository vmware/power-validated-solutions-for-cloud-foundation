# Update-vRACloudZone

## Synopsis

Update a Cloud Zones

## Syntax

### folder

```powershell
Update-vRACloudZone -id <String> [-folder <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### tag

```powershell
Update-vRACloudZone -id <String> [-tagKey <String>] [-tagValue <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### placementPolicy

```powershell
Update-vRACloudZone -id <String> [-placementPolicy <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vRACloudZone` cmdlet updates a Cloud Zones in VMware Aria Automation.

## Examples

### Example 1

```powershell
Update-vRACloudZone -folder sfo-w01-fd-workload
```

This example adds a folder to theCloud Zone in VMware Aria Automation by id

### Example 2

```powershell
Update-vRACloudZone -tagKey enabled -tagValue true
```

This example adds tags that should be used to dynamically obtain resources for a Cloud Zone in VMware Aria Automation by id

### Example 3

```powershell
Update-vRACloudZone -placementPolicy ADVANCED
```

This example updates the placement policy for Cloud Zones to ADVANCED in VMware Aria Automation by id.

## Parameters

### -id

The Cloud Zone id to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -folder

The folder to add to the Cloud Zone.

```yaml
Type: String
Parameter Sets: folder
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -tagKey

The tag key to add to the Cloud Zone.

```yaml
Type: String
Parameter Sets: tag
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -tagValue

The tag value to add to the Cloud Zone.

```yaml
Type: String
Parameter Sets: tag
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -placementPolicy

The placement policy to update the Cloud Zone to.

```yaml
Type: String
Parameter Sets: placementPolicy
Aliases:

Required: False
Position: Named
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
