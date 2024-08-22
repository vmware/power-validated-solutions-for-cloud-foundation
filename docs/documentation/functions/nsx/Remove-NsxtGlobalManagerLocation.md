# Remove-NsxtGlobalManagerLocation

## Synopsis

Deletes the location configured in NSX Global Manager.

## SYNTAX

```powershell
Remove-NsxtGlobalManagerLocation [[-location] <String>] [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerLocation` cmdlet deletes the location configured in an NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerLocation -location sfo-m01
```

This example deletes the location sfo-m01 from an NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
