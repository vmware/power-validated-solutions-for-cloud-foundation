# Request-AriaNetworksInternalApi

## Synopsis

Send a request to the VMware Aria Operations for Networks Internal API endpoint.

## Syntax

```powershell
Request-AriaNetworksInternalApi [-path] <String> [-method] <String> [[-body] <Object>] [<CommonParameters>]
```

## Description

The Request-AriaNetworksInternalApi cmdlet sends a request to the specified path on the VMware Aria Operations for Networks API.

## Example

### Example 1

```powershell
Request-AriaNetworksInternalApi -path "/infra/snmp" -method "GET"
```

This example sends a GET request to the "/infra/snmp" path on the Aria Operations for Networks Internal API.

## Parameters

### -path

The path on the Aria Operations for Networks Internal API to send the request to.

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

### -method

The HTTP method to use for the request.

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

### -body

The body of the request, if applicable.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
