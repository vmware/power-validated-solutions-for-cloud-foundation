# Test-vRLIConnection

## Synopsis

Check network connectivity to a VMware Aria Operations for Logs cluster or node.

## Syntax

```powershell
Test-vRLIConnection [-server] <String> [[-port] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vRLIConnection` cmdlet checks the network connectivity to a VMware Aria Operations for Logs cluster or node.
Supports testing a connection on ports 443 (HTTPS), 80 (HTTP), 22 (SSH), 9000 (CFAPI), 9543 (CFAPI SSL), 514 (SYSLOG), 1514 (SYSLOG), 6514 (SYSLOG).
Default: 443 (HTTPS).

## Examples

### Example 1

```powershell
Test-vRLIConnection -server sfo-vrli01.sfo.rainpole.io
```

This example checks network connectivity with a VMware Aria Operations for Logs cluster or node on default port, 443 (HTTPS).

### Example 2

```powershell
Test-vRLIConnection -server sfo-vrli01.sfo.rainpole.io -port 443
```

This example checks network connectivity with a VMware Aria Operations for Logs cluster or node. on port 443 (HTTPS). This is the default port.

### Example 3

```powershell
Test-vRLIConnection -server sfo-vrli01a.sfo.rainpole.io -port 22
```

This example checks network connectivity with a VMware Aria Operations for Logs node on port 22 (SSH).

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the a VMware Aria Operations for Logs cluster or node.

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

The port number to test the connection.
One of the following: 443 (HTTPS), 80 (HTTP), 22 (SSH), 9000 (CFAPI), 9543 (CFAPI SSL), 514 (SYSLOG), 1514 (SYSLOG), 6514 (SYSLOG).
Default: 443 (HTTPS).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 443
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
