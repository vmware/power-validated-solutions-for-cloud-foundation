# Request-vRSLCMProductBinary

## Synopsis

Downloads a VMware Aria Suite binary

## Syntax

```powershell
Request-vRSLCMProductBinary [-version] <String> [[-productId] <String>] [-productDownloadType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-vRSLCMProductBinary` cmdlet downloads a VMware Aria suite product binary through the My VMware account to VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Request-vRSLCMProductBinary -version x.y.z -productId "vra" -productDownloadType "Install"
```

This example will download the VMware Aria Automation install binary for version x.y.z.

### Example 2

```powershell
Request-vRSLCMProductBinary -version x.y.z -productId "vra" -productDownloadType "upgrade"
```

This example will download the VMware Aria Automation upgrade binary for version x.y.z.

## Parameters

### -version

The version of the product binary to download.

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

### -productId

The product ID of the product binary to download.

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

### -productDownloadType

The type of product binary to download.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
