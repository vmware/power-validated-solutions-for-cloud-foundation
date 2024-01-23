# Get-vROPSAdapterKind

## Synopsis

Get list of adapter kinds

## Syntax

```powershell
Get-vROPSAdapterKind [[-adapterKind] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSAdapterKind` cmdlet gets a list of adapter kinds in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSAdapterKind
```

This example gets a list of all adapter kinds

### Example 2

```powershell
Get-vROPSAdapterKind -kind VMWARE
```

This example gets details of an resource kinds for the VMWARE adapter kind.

## Parameters

### -adapterKind

The adapter kind to get resource kinds for.

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
