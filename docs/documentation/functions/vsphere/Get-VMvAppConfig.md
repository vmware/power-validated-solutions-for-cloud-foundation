# Get-VMvAppConfig

## Synopsis

Retrieves the full OVF environment settings from a standard VM.

## Syntax

```powershell
Get-VMvAppConfig [-vm] <PSObject> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

Saves the setting of the passed VM object to a JSON file.

## Examples

### Example 1

```powershell
Get-VMAppConfig -vm $vm
```

## Parameters

### -vm

The virtual appliance to retrieve the OVF properties from.

```yaml
Type: PSObject
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
