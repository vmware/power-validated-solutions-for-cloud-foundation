# Remove-vRLILogForwarder

## Synopsis

Remove a log forwarder.

## Syntax

```powershell
Remove-vRLILogForwarder [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRLILogForwarder` cmdlet removes a log forwarder destination from VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Remove-vRLILogForwarder
```

This example removes a log forwarder destination from VMware Aria Operations for Logs.

### Example 2

```powershell
Remove-vRLILogForwarder -id "04f98100-995b-3f56-b321-0e10f21ee022"
```

This example removes a log forwarder destination from VMware Aria Operations for Logs by ID.

## Parameters

### -id

The ID of the log forwarder destination.

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
