# Get-NsxtGlobalManagerEdgeCluster

## Synopsis

Retrieve the NSX Edge cluster information for the specified site.

## Syntax

```powershell
Get-NsxtGlobalManagerEdgeCluster [-siteId] <String> [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerEdgeCluster` cmdlet retrieves the NSX Edge cluster information for the specified site.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerEdgeCluster -siteId sfo-m01
```

This example retrieves the NSX Edge cluster information for the specified site.

## PARAMETERS

### -siteId

The ID of the site.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
