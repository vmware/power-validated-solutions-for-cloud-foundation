# Get-vRACloudZone

## Synopsis

Get Cloud Zones

## Syntax

```powershell
Get-vRACloudZone [[-id] <String>] [-compute] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRACloudZone` cmdlet gets a list of known Cloud Zones from VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRACloudZone
```

This example gets all known Cloud Zones from VMware Aria Automation

### Example 2

```powershell
Get-vRACloudZone [[-id] <String>]
```

This example gets a Cloud Zone from VMware Aria Automation by id

### Example 3

```powershell
Get-vRACloudZone [[-id] <String>] [-compute]
```

This example gets a Cloud Zone Compute details from VMware Aria Automation.

## Parameters

### -id

The Cloud Zone id to get.

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

### -compute

Get the compute details for the Cloud Zone.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
