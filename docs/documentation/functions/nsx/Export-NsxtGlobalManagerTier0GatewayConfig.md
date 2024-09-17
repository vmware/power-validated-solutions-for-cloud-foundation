# Export-NsxtGlobalManagerTier0GatewayConfig

## Synopsis

Create the JSON specification file for the BGP neighbor and interface configuration.

## Syntax

```powershell
Export-NsxtGlobalManagerTier0GatewayConfig [-server] <String> [-user] <String> [-pass] <String> [-tier0Gateway] <String> [-location] <String> [-bgpNeighborJsonFile] <String> [-interfaceJsonFile] <String> [<CommonParameters>]
```

## Description

The `Export-NsxtGlobalManagerTier0GatewayConfig` cmdlet removes the Tier 0 Gateway from the NSX Global Manager.

- Validates that network connectivity and authentication is possible to NSX Global Manager.
- Creates the JSON specification file for the BGP neighbor and interface configuration, if configured.

## Examples

### Example 1

```powershell
Export-NsxtGlobalManagerTier0GatewayConfig -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier0Gateway lax-m01-ec01-t0-gw01 -location lax-m01 -bgpNeighborJsonFile ./tier0-bgp-neighbor.json -interfaceJsonFile ./tier0-interface.json
```

This example creates the JSON specification file for the BGP neighbor and interface configuration.

## Parameters

### -server

The fully qualified domain name of the NSX Global Manager.

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

The username to authenticate to the NSX Global Manager.

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

The password to authenticate to the NSX Global Manager.

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

### -tier0Gateway

The NSX Tier0 Gateway name to delete.

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

### -location

The name of the location.

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

### -bgpNeighborJsonFile

The JSON file to be used for exporting the BGP neighbor configuration

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

### -interfaceJsonFile

The JSON file to be used for exporting the interface configuration

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
