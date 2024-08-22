# Get-NsxtGlobalManagerLocation

## Synopsis

Retrieve the locations configured in NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerLocation [[-location] <String>] [-conflictCheck] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerLocation` cmdlet retrieves the locations configured in an NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerLocation
```

This example retrieves all locations configured in an NSX Global Manager.

### Example 2

```powershell
Get-NsxtGlobalManagerLocation -location sfo-m01
```

This example retrieves the location sfo-m01 from an NSX Global Manager.

## Parameters

### -location

The name of the location.

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

### -conflictCheck

Check for conflicts.

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
