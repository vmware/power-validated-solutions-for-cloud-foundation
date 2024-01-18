# Test-SSOConnection

## Synopsis

Check network connectivity to a vCenter Single Sign-On endpoint.

## Syntax

```powershell
Test-SSOConnection [-server] <String> [[-port] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-SSOConnection` cmdlet checks the network connectivity to a vCenter Single Sign-On endpoint.
Supports testing a connection on port 443 (HTTPS).

## Examples

### Example 1

```powershell
Test-SSOConnection -server sfo-m01-vc01.sfo.rainpole.io
```

This example checks network connectivity with a vCenter Single Sign-On endpoint on port 443 (HTTPS).

### Example 2

```powershell
Test-SSOConnection -server sfo-m01-vc01.sfo.rainpole.io -port 443
```

This example checks network connectivity with a vCenter Single Sign-On endpoint on port 443 (HTTPS).

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the vCenter Single Sign-On endpoint.

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
