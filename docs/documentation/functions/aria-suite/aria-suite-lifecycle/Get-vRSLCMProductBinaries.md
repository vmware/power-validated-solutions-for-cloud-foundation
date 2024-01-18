# Get-vRSLCMProductBinaries

## Synopsis

Get list of product binaries

## Syntax

```powershell
Get-vRSLCMProductBinaries [-sourceLocation] <String> [-sourceType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductBinaries` cmdlet retrieves a list of product binaries in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMProductBinaries -sourceLocation /data -sourceType Local
```

This example retrieves a list of product binaries in VMware Aria Suite Lifecycle located in the absolute path /data.

## Parameters

### -sourceLocation

 The absolute path to the product binaries in VMware Aria Suite Lifecycle.

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

### -sourceType

The type of source for the product binaries in VMware Aria Suite Lifecycle.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
