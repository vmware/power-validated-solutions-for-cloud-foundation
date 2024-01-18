# Add-vRAResourceComputeTag

## Synopsis

Add a compute resource tag

## Syntax

```powershell
Add-vRAResourceComputeTag [[-id] <String>] [[-tagKey] <String>] [[-tagValue] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRAResourceComputeTag` cmdlet adds a tag to a compute resources in VMware Aria Automation.

## Examples

### Example 1

```powershell
Add-vRAResourceComputeTag -id <compute_resource_id> -tagKey enabled -tagValue true
```

This example adds a new tag to a compute resourcein VMware Aria Automation.

## Parameters

### -id

The compute resource id to add the tag to.

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

### -tagKey

The tag key to add.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -tagValue

The tag value to add.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
