# Register-vRSLCMProductBinary

## Synopsis

Get list of product binaries

## Syntax

```powershell
Register-vRSLCMProductBinary [-ovaName] <String> [-ovaPath] <String> [-ovaType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Register-vRSLCMProductBinary` cmdlet retrieves a list of mapped product binaries in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Register-vRSLCMProductBinary -ovaName vRealize-Operations-Manager-Appliance-8.10.2.21178503_OVF10.ova -ovaPath /data/vRealize-Operations-Manager-Appliance-8.10.2.21178503_OVF10.ova -ovaType install
```

This example adds the binary to VMware Aria Suite Lifecycle.

## Parameters

### -ovaName

The name of the OVA to add to VMware Aria Suite Lifecycle.

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

### -ovaPath

The absolute path to the OVA to add to VMware Aria Suite Lifecycle.

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

### -ovaType

The type of OVA to add to VMware Aria Suite Lifecycle.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
