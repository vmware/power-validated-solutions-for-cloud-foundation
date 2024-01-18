# Get-SrmService

## Synopsis

Get information about Site Recovery Manager appliance services.

## Syntax

```powershell
Get-SrmService [[-serviceId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SrmService` cmdlet retrieves information about the Site Recovery Manager appliance. services.

## Examples

### Example 1

```powershell
Get-SrmService
```

This example retrieves information about all services on the Site Recovery Manager appliance.

### Example 2

```powershell
Get-SrmService -serviceId hms
```

This example retrieves information about hms service on .

## Parameters

### -serviceId

The serviceId parameter The service to configure.

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
