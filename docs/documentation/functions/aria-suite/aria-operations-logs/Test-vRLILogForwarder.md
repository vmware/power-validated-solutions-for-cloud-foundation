# Test-vRLILogForwarder

## Synopsis

Test a log forwarder destination endpoint.

## Syntax

```powershell
Test-vRLILogForwarder [-server] <String> [-port] <String> [-protocol] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vRLILogForwarder` cmdlet tests a log forwarder destination from VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Test-vRLILogForwarder -server "lax01-vrli01.lax.rainpole.io" -port 9000 -protocol CFAPI
```

This example tests a log forwarder destination from VMware Aria Operations for Logs.

## Parameters

### -server

The server name or IP address of the log forwarder destination.

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

### -port

The port number of the log forwarder destination.

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

### -protocol

The protocol of the log forwarder destination.
Valid values are CFAPI, TCP, or UDP.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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
