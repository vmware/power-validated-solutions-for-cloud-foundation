# Get-vROPSVersion

## Synopsis

Get version informartion

## Syntax

```powershell
Get-vROPSVersion [-all] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSVersion` cmdlet gets version information for VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSVersion 
```

This example gets the current version of the service

### Example 2

```powershell
Get-vROPSVersion -all
```

This example gets a list of all versions supported by the service.

## Parameters

### -all

Get all versions supported by the service.

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
