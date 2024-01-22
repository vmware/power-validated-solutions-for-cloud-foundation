# Set-vRLILogForwarder

## Synopsis

Adds a log forwarder destination.

## Syntax

```powershell
Set-vRLILogForwarder [-name] <String> [-server] <String> [-protocol] <String> [-port] <String>
 [[-transport] <String>] [-acceptCert] <String> [-sslEnabled] <String> [-testConnection] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLILogForwarder` cmdlet adds a log forwarder destination to VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLILogForwarder -name "lax01-vrli01" -server "lax01-vrli01.lax.rainpole.io" -protocol SYSLOG -port 514 -transport TCP -acceptCert false -sslEnabled false -testConnection false
```

This example adds a log forwarder to VMware Aria Operations for Logs using syslog over TCP 514.

### Example 2

```powershell
Set-vRLILogForwarder -name "lax01-vrli01" -server "lax01-vrli01.lax.rainpole.io" -protocol CFAPI -port 9543 acceptCert true -sslEnabled true -testConnection true
```

This example adds a log forwarder to VMware Aria Operations for Logs using the Ingestion API and SSL enabled.

## Parameters

### -name

The name of the log forwarder destination.

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

### -server

The server name or IP address of the log forwarder destination.

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

The protocol of the log forwarder destination. Valid values are CFAPI, SYSLOG, or RAW.

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

### -port

The port number of the log forwarder destination.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -transport

The transport protocol of the log forwarder destination. Valid values are TCP or UDP.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -acceptCert

Accept the certificate of the log forwarder destination. Valid values are true or false.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -sslEnabled

Enable SSL for the log forwarder destination. Valid values are true or false.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -testConnection

Test the connection to the log forwarder destination. Valid values are true or false.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
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
