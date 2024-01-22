# Set-SrmService

## Synopsis

Get information about Site Recovery Manager appliance services.

## Syntax

```powershell
Set-SrmService [-serviceId] <String> [-state] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmService` cmdlet retrieves information about the Site Recovery Manager appliance. services.

## Examples

### Example 1

```powershell
Set-SrmService -serviceId srm -state stop
```

This example stops the hms service on the Site Recovery Manager appliance.

### Example 2

```powershell
Set-SrmService -serviceId srm -state start
```

This example starts the hms service on the Site Recovery Manager appliance.

### Example 3

```powershell
Set-SrmService -serviceId srm -state restart
```

This example restarts the hms service on the Site Recovery Manager appliance.

## Parameters

### -serviceId

The serviceId parameter The service to configure.

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

### -state

The state parameter The state of the service to configure.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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
