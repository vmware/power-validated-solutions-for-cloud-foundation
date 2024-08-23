# Start-NsxtGlobalManagerOnBoarding

## Synopsis

Import the NSX Local Manager objects

## Syntax

```powershell
Start-NsxtGlobalManagerOnBoarding [-location] <String> [-backupReference] <String> [<CommonParameters>]
```

## Description

The `Start-NsxtGlobalManagerOnBoarding` cmdlet imports the NSX Local Manager objects into the NSX Global Manager.

## Examples

### Example 1

```powershell
Start-NsxtGlobalManagerOnBoarding -location sfo-m01
```

This example imports the NSX Local Manager objects to the NSX Global Manager.

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

### -backupReference

The reference ID to last successful backup.

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
