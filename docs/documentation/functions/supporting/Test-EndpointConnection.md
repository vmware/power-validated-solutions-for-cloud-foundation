# Test-EndpointConnection

## Synopsis

Test the connection to an endpoint on a specific port.

## Syntax

```powershell
Test-EndpointConnection [-server] <String> [-port] <Int32> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-EndpointConnection` cmdlet tests the connection to an endpoint on a specific port.
If PowerShell Core is used, the Test-Connection cmdlet is used to test the connection.
If PowerShell Desktop is used, the Test-NetConnection cmdlet is used to test the connection.

## Examples

### Example 1

```powershell
Test-EndpointConnection -server example.rainpole.io -port 443
```

This example tests a connection to an endpoint on port TCP 443 (HTTPS).

### Example 2

```powershell
Test-EndpointConnection -server example.rainpole.io -port 22
```

This example tests a connection to an endpoint on port TCP 22 (SSH).

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the endpoint to test a connection to.

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

The port number to test the endpoint connection.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
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
