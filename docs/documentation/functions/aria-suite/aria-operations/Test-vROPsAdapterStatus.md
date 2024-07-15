# Test-vROPsAdapterStatus

## Synopsis

Validates the integration status of a VMware Aria Operations adapter through adapter's ID

## Syntax

```powershell
Test-vROPsAdapterStatus [-resourceId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vROPsAdapterStatus` cmdlet validates the integration status between VMware Aria Operations and configured adapter.

## Examples

### Example 1

```powershell
Test-vROPsAdapterStatus -resourceId "b214fd75-07cc-4dab-9fbb-95a6af739a04"
```

This example validates the integration status between VMware Aria Operations and configured adapter through its ID.

## Parameters

### -resourceId

The ID of the adapter to validate the integration status.

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
