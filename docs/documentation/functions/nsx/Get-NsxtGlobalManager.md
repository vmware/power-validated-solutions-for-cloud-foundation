# Get-NsxtGlobalManager

## Synopsis

Retrieve a list of NSX Global Managers.

## Syntax

```powershell
Get-NsxtGlobalManager [[-id] <String>] [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManager` cmdlet retrieves a list of NSX Global Managers.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManager
```

This example retrieves a list of NSX Global Managers.

### Example 2

```powershell
Get-NsxtGlobalManager -id SFOGM
```

This example retrieves the details of the SFOGM NSX Global Manager.

## Parameters

### -id

The ID of the Global Manager.

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
