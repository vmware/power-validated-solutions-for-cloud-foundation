# New-vROPSNotification

## Synopsis

Create notifications in VMware Aria Operations

## Syntax

```powershell
New-vROPSNotification [-csvPath] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vROPSNotification` cmdlet creates notifications in VMware Aria Operations.

## Examples

### Example 1

```powershell
New-vROPSNotification -csvPath .\SampleNotifications\aria-operations-notifications-vcf.csv
```

This example adds all the notifications in the csv file to VMware Aria Operations.

## Parameters

### -csvPath

The path to the csv file containing the notifications to add.

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
