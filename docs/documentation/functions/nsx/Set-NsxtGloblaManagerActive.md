# Set-NsxtGloblaManagerActive

## Synopsis

Sets the NSX Global Manager to active mode.

## Syntax

```powershell
Set-NsxtGloblaManagerActive [-displayName] <String> [<CommonParameters>]
```

## Description

The `Set-NsxtGloblaManagerActive` cmdlet sets the NSX Global Manager to active mode.

## Examples

### Example 1

```powershell
Set-NsxtGloblaManagerActive -displayName sfo-m01-nsx-gm01
```

This example sets the NSX Global Manager to Active mode with the display name sfo-m01-nsx-gm01.

## Parameters

### -displayName

Display name to be assigned to the active NSX Global Manager.

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
