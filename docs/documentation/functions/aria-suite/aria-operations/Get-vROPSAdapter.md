# Get-vROPSAdapter

## Synopsis

Get list of adapters

## Syntax

```powershell
Get-vROPSAdapter [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSAdapter` cmdlet gets a list of adapters in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSAdapter
```

This example gets a list of all adapters

### Example 2

```powershell
Get-vROPSAdapter [[-id] <String>] 
```

This example gets details of an adapter by its ID.

## Parameters

### -id

The ID of the adapter to get details for.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
