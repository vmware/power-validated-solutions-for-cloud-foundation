# Get-NsxtLocaleService

## Synopsis

Get paginated list of all Tier-0 locale-services

## Syntax

```powershell
Get-NsxtLocaleService [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtLocaleService` cmdlet returns a paginated list of all Tier-0 locale-services.

## Examples

### Example 1

```powershell
Get-NsxtLocaleService [-id] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

This example will list all Tier-0 locale-services.

## Parameters

### -id

The id of the NSX Tier-0 gateway.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
