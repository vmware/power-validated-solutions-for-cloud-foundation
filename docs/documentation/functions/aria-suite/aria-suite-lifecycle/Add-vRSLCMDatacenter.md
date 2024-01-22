# Add-vRSLCMDatacenter

## Synopsis

Add a datacenter in VMware Aria Suite Lifecycle

## Syntax

```powershell
Add-vRSLCMDatacenter [-datacenterName] <String> [-location] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMDatacenter` cmdlet adds a datacenter in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Add-vRSLCMDatacenter -datacenterName xint-m01-dc01 -location "San Francisco;California;US;37.77493;-122.41942"
```

This example adds a datacenter in VMware Aria Suite Lifecycle.

## Parameters

### -datacenterName

The name of the datacenter.

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

### -location

The location of the datacenter.

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
