# Get-NsxtGlobalManagerConfig

## Synopsis

Retrieve the NSX Global Manager configuration.

## Syntax

```powershell
Get-NsxtGlobalManagerConfig [-localManager] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerConfig` cmdlet retrieves the NSX Global Manager configuration.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerConfig
```

This example retrieves the NSX Global Manager configuration.

### Example 2

```powershell
Get-NsxtGlobalManagerConfig -localManager
```

This example retrieves the NSX Global Manager configuration from the NSX Local Manager.

## PARAMETERS

### -localManager

Parameter to retrieve the NSX Global Manager configuration from an NSX Local Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
