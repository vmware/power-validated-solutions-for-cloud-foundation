# Test-SrmVamiConnection

## Synopsis

Check network connectivity to a Site Recovery Manager instance VAMI.

## Syntax

```powershell
Test-SrmVamiConnection [-server] <String> [[-port] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-SrmVamiConnection` cmdlet checks the network connectivity to a Site Recovery Manager instance VAMI.
Supports testing a connection on ports 5480 (HTTPS/VAMI).
Default: 5480 (HTTPS/VAMI).

## Examples

### Example 1

```powershell
Test-SrmVamiConnection -server sfo-srm01.sfo.rainpole.io
```

This example checks network connectivity with a Site Recovery Manager instance VAMI on default port, 5480 (HTTPS/VAMI).

### Example 2

```powershell
Test-SrmVamiConnection -server sfo-srm01.sfo.rainpole.io -port 5480
```

This example checks network connectivity with a Site Recovery Manager instance VAMI on port 5480 (HTTPS/VAMI). This is the default port.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the a Site Recovery Manager instance.

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
One of the following: 5480 (HTTPS/VAMI).
Default: 5480 (HTTPS/VAMI).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 5480
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
