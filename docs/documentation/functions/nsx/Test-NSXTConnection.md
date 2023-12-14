# Test-NSXTConnection

## Synopsis

Check network connectivity to an NSX Manager.

## Syntax

```powershell
Test-NSXTConnection [-server] <String> [[-port] <Int32>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Test-NSXTConnection` cmdlet checks the network connectivity to an NSX Manager.
Supports testing a connection on ports 443 (HTTPS) and 22 (SSH).
Default: 443 (HTTPS).

## Examples

### Example 1

```powershell
Test-NSXTConnection -server sfo-m01-nsx01.sfo.rainpole.io
```

This example checks network connectivity with an NSX Manager on default port, 443 (HTTPS).

### Example 2

```powershell
Test-NSXTConnection -server sfo-m01-nsx01.sfo.rainpole.io -port 443
```

This example checks network connectivity with an NSX Manager on port 443 (HTTPS). This is the default port.

### Example 3

```powershell
Test-NSXTConnection -server sfo-m01-nsx01.sfo.rainpole.io -port 22
```

This example checks network connectivity with an NSX Manager on port 22 (SSH).

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the NSX Manager.

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
One of the following: 443 (HTTPS) or 22 (SSH).
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
