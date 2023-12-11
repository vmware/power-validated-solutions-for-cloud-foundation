# Get-VrmsService

## Synopsis

Get information about vSphere Replication appliance services

## Syntax

```powershell
Get-VrmsService [[-serviceId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VrmsService` cmdlet retrieves information about the vSphere Replication appliance services.

## Examples

### Example 1

```powershell
Get-VrmsService
```

This example retrieves information about all services on the vSphere Replication appliance

### Example 2

```powershell
Get-VrmsService -serviceId hms
```

This example retrieves information about hms service on the vSphere Replication appliance.

## Parameters

### -serviceId

The serviceId parameter The service to be configured.

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
