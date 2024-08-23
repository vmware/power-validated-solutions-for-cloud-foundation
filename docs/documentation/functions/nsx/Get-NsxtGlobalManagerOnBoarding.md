# Get-NsxtGlobalManagerOnBoarding

## Synopsis

Retrieve the locations configured in NSX Global Manager.

## Syntax

```powershell
Get-NsxtGlobalManagerOnBoarding [-location] <String> [-action] <String> [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerOnBoarding` cmdlet retrieves the locations configured in an NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerOnBoarding -location sfo-m01 -action conflict
```

This example checks that the location sfo-m01 does not have any conflicts.

### Example 2

```powershell
Get-NsxtGlobalManagerOnBoarding -location sfo-m01 -action status
```

This example checks the status of the location sfo-m01.

## Parameters

### -location

The name of the location.

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

### -action

Check for conflicts.
(Can be one of 'conflict' or 'action')

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
