# Set-vRLILogArchive

## Synopsis

Configuer the index partitions

## Syntax

```powershell
Set-vRLILogArchive [-id] <String> [-enable] <String> [[-retentionPeriodDays] <Int32>] [-archiveEnable] <String>
 [[-archiveLocation] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLILogArchive` cmdlet configures the log archive location for a partition in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLILogArchive -id d41d8cd9-8f00-3204-a980-0998ecf8427e -enable true -retentionPeriod 7 -archiveEnable true -archiveLocation nfs://172.27.11.4/sfo-m01-vrli01-400GB
```

This example configures the retention configuration.

## Parameters

### -id

The id of the partition to configure.

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

### -enable

Enable or disable the partition.

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

### -retentionPeriodDays

The retention period in days.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -archiveEnable

Enable or disable the archive.

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

### -archiveLocation

The archive location.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
