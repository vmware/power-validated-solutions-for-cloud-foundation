# Request-CSPToken

## Synopsis

Request authorization token from VMware Cloud Service

## Syntax

```powershell
Request-CSPToken [-environment] <String> [-apiToken] <String> [[-extensibilityProxy] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-CSPToken` cmdlet connects to the VMware Cloud Service and obtains an authorization token.
It is required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-CSPToken -environment production -apiToken <string>
This example shows how to connect to the production VMware Cloud Service and obtain an authorization token.
```

### Example 2

```powershell
Request-CSPToken -environment staging -apiToken <string>
This example shows how to connect to the staging VMware Cloud Service and obtain an authorization token.
```

### Example 3

```powershell
Request-CSPToken -environment staging -apiToken <string> -extensibilityProxy sfo-vmc-cep01.sfo.rainpole.io
This example shows how to connect to the staging VMware Cloud Service and obtain an authorization token and set
set the fqdn for the Cloud Extensibility Proxy for VMware Aria Automation Orchestrator configuration.
```

## Parameters

### -environment

Connect to the production or staging VMware Cloud Service.

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

### -apiToken

The API Token for the VMware Cloud Service.

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

### -extensibilityProxy

The fqdn of the Cloud Extensibility Proxy for VMware Aria Automation Orchestrator configuration.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
