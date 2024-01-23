# Start-vROPSAdapter

## Synopsis

Starts collection of adapter

## Syntax

```powershell
Start-vROPSAdapter [-adapterId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Start-vROPSAdapter` cmdlet starts the collection of an adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Start-vROPSAdapter -adapterId <String> 
```

This example starts the adapter by id.

## Parameters

### -adapterId

The ID of the adapter to start.

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
