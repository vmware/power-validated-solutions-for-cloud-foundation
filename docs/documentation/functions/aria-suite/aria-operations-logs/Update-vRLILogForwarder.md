# Update-vRLILogForwarder

## Synopsis

Updates a log forwarder.

## Syntax

```powershell
Update-vRLILogForwarder [-id] <String> [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Updates-vRLILogForwarder` cmdlet updates a log forwarder destination from VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Updates-vRLILogForwarder
```

This example updates a log forwarder destination from VMware Aria Operations for Logs.

### Example 2

```powershell
Updates-vRLILogForwarder -id "04f98100-995b-3f56-b321-0e10f21ee022" -json $json
```

This example updates a log forwarder destination from VMware Aria Operations for Logs.

## Parameters

### -id

The ID of the log forwarder destination.

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

### -json

The JSON payload for the log forwarder destination.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
