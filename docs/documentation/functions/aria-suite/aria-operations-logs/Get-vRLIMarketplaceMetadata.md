# Get-vRLIMarketplaceMetadata

## Synopsis

Returns metadate for available items in the Content Pack Marketplace.

## Syntax

```powershell
Get-vRLIMarketplaceMetadata [-index] [-token] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRLIMarketplaceMetadata` cmdlet returns the metadata for VMware Aria Operations for Logs content packs
available in the Content Pack Marketplace hosted on GitHub (<https://github.com/vmw-loginsight/>).

## Examples

### Example 1

```powershell
Get-vRLIMarketplaceMetadata [-index] [-token] <String>
```

This example returns the metadata for VMware Aria Operations for Logs content packs in the Content Pack MarketPlace.

## Parameters

### -index

Returns the index of available content packs in the Content Pack Marketplace.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -token

The base64 encoded GitHub token. If not base64 encoded, the cmdlet will encode it for you.

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
