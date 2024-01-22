# Get-vRSLCMRequest

## Synopsis

Get all Requests

## Syntax

```powershell
Get-vRSLCMRequest [[-requestId] <String>] [-errorCauses] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMRequest` cmdlet gets all requests in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMRequest
```

This example gets all requests VMware Aria Suite Lifecycle

### Example 2

```powershell
Get-vRSLCMRequest -requestId 0ee1a4a0-203a-4c87-a40e-65d9a450e398
```

This example gets the request by id from VMware Aria Suite Lifecycle

### Example 3

```powershell
Get-vRSLCMRequest -requestId 0ee1a4a0-203a-4c87-a40e-65d9a450e398 -errorCauses
```

This example gets the errors for a request by id from VMware Aria Suite Lifecycle.

## Parameters

### -requestId

 The requestId of the request.

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

### -errorCauses

Switch to get the errors for a request by id.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
