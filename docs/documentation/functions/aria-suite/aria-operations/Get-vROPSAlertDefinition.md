# Get-vROPSAlertDefinition

## Synopsis

Get collection of alert definitions matching the search criteria specified

## Syntax

### default (Default)

```powershell
Get-vROPSAlertDefinition [-id <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### id

```powershell
Get-vROPSAlertDefinition [-id <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### adapterKind

```powershell
Get-vROPSAlertDefinition [-adapterKind <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### resourceKind

```powershell
Get-vROPSAlertDefinition [-resourceKind <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSAlertDefinition` cmdlet gets collection of alert definitions matching the search criteria specified
in VMare Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSAlertDefinition
```

This example gets all alert definitions.

### Example 2

```powershell
Get-vROPSAlertDefinition -id SrmAdapter
```

This example gets an alert definition by its id.

### Example 3

```powershell
Get-vROPSAlertDefinition -adapterKind SrmAdapter
```

This example gets all alert definitions for the adapter type SrmAdapter.

### Example 4

```powershell
Get-vROPSAlertDefinition -resourceKind "Protection Groups"
```

This example gets all alert definitions for the resource type SrmAdapter.

## Parameters

### -id

The ID of the alert definition to get.

```yaml
Type: String
Parameter Sets: default, id
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -adapterKind

The adapter kind of the alert definition to get.

```yaml
Type: String
Parameter Sets: adapterKind
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -resourceKind

The resource kind of the alert definition to get.

```yaml
Type: String
Parameter Sets: resourceKind
Aliases:

Required: False
Position: Named
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
