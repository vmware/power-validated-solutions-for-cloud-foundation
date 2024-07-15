# Undo-vRLILogForwarder

## Synopsis

Removes a log forwarder destination to VMware Aria Operations for Logs

## Syntax

```powershell
Undo-vRLILogForwarder [-server] <String> [-user] <String> [-pass] <String> [-name] <String> [-fqdn] <String> [-protocol] <String> [-port] <String> [[-transport] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRLILogForwarder` cmdlet removes log forwarder destination to VMware Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Removes a log forwarder destination from VMware Aria Operations for Logs

## Examples

### Example 1

```powershell
Undo-vRLILogForwarder -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -fqdn lax-vrli01.lax.rainpole.io -protocol SYSLOG -port 514
```

This example removes a log forwarder to VMware Aria Operations for Logs using syslog over TCP 514.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username used to authenticate to SDDC Manager.

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

### -pass

The password used to authenticate to SDDC Manager.

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

### -name

The name of the log forwarder to remove.

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

### -fqdn

The FQDN of the log forwarder to remove.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -protocol

The protocol of the log forwarder to remove.
'CFAPI", "SYSLOG", "RAW".

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

### -port

The port of the log forwarder to remove.

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

### -transport

The transport of the log forwarder to remove.
'TCP', 'UDP'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
