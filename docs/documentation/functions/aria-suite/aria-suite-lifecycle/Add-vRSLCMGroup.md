# Add-vRSLCMGroup

## Synopsis

Assign a group to a VMware Aria Suite Lifecycle role.

## Syntax

``` PowerShell
Add-vRSLCMGroup [-group] <String> [-role] <String> [<CommonParameters>]
```

## Description

The `Add-vRSLCMGroup` cmdlet assigns a group to a VMware Aria Suite Lifecycle roles.

## Examples

### Example 1

``` PowerShell
Add-vRSLCMGroup -group gg-vrslcm-admins -role "LCM Admin"
```

This example assigns a group to a the LCM Admin in VMware Aria Suite Lifecycle.

## Parameters

### -group

The group to assign the VMware Aria Suite Lifecycle role to.

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

### -role

The VMware Aria Suite Lifecycle role to assign (consists of LCM Admin, Content Developer, Content Release Manager, Certificate Administrator, VCF Role).

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
