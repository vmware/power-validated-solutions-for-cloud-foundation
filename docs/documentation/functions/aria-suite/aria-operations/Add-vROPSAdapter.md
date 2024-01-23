# Add-vROPSAdapter

## Synopsis

Add an adapter

## Syntax

```powershell
Add-vROPSAdapter [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapter` cmdlet adds an adapter to VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapter -json .\addAdapter.json
This example adds an adapter useing the json specification file
```

This example adds an adapter useing the json specification file.

## Parameters

### -json

The JSON file to use for the add.

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
