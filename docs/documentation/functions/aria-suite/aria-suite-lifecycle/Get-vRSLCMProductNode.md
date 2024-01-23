# Get-vRSLCMProductNode

## Synopsis

Gets the nodes in the VMware Aria Suite Lifecycle inventory for a specified environment and product

## Syntax

```powershell
Get-vRSLCMProductNode [-environmentName] <String> [-product] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductNode` cmdlet gets the nodes in the VMware Aria Suite Lifecycle inventory for a specified environment and product.

## Examples

### Example 1

```powershell
Get-vRSLCMProductNode -environmentName globalenvironment -product vidm
```

This returns a list of nodes in the Workspace ONE Access instance managed by VMware Aria Suite Lifecycle.

## Parameters

### -environmentName

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
