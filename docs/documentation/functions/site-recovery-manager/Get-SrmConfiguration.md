# Get-SrmConfiguration

## Synopsis

Get registration

## Syntax

### default (Default)

```powershell
Get-SrmConfiguration [-reconfigure] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### reconfigure

```powershell
Get-SrmConfiguration [-reconfigure] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmConfiguration` cmdlet retrieves registration configuration for a Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Get-SrmConfiguration
```

This example retrieves the registration configuration for the Site Recovery Manager appliance.

### Example 2

```powershell
Get-SrmConfiguration -reconfigure
```

This example retrieves the reconfiguration status for the Site Recovery Manager appliance.

## Parameters

### -reconfigure

The reconfigure parameter retrieves the reconfiguration status for the Site Recovery Manager appliance.

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
