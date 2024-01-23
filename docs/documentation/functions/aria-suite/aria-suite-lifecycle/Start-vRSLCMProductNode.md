# Start-vRSLCMProductNode

## Synopsis

Starts nodes in a VMware Aria Suite Lifecycle-managed product

## Syntax

```powershell
Start-vRSLCMProductNode [-environment] <String> [-product] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Start-vRSLCMProductNode` cmdlet starts nodes in a VMware Aria Suite Lifecycle-managed product.

## Examples

### Example 1

```powershell
Start-vRSLCMProductNode -environment globalenvironment -product vidm
```

This example starts all nodes in the Workspace ONE Access instance managed by VMware Aria Suite Lifecycle.

## Parameters

### -environment

The name of the environment in VMware Aria Suite Lifecycle.

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

### -product

The name of the product in VMware Aria Suite Lifecycle.

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
