# Remove-vRSLCMRequest

## Synopsis

Delete a request

## Syntax

```powershell
Remove-vRSLCMRequest [[-requestId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMRequest` cmdlet removes a request from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Remove-vRSLCMRequest [[-requestId] <String>]
```

This example removes a request from VMware Aria Suite Lifecycle.

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
