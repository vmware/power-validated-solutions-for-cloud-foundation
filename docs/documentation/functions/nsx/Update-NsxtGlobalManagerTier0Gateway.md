# Update-NsxtGlobalManagerTier0Gateway

## Synopsis

Update the Tier-0 Gateway on the NSX Global Manager.

## Syntax

```powershell
Update-NsxtGlobalManagerTier0Gateway [-server] <String> [-user] <String> [-pass] <String> [-tier0Gateway] <String> [-location] <String> [-interfaceJsonFile] <String> [-bgpNeighborJsonFile] <String> [-bgpPassword] <String> [<CommonParameters>]
```

## Description

The `Update-NsxtGlobalManagerTier0Gateway` cmdlet updates the Tier-0 Gateway on the NSX Global Manager.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given Tier-0 Gateway and location exist in the NSX Global Manager.
- Creates the service interface based on the provided JSON file on the Tier-0 Gateway.
- Creates the BGP neighbors based on the provided JSON file for the Tier-0 Gateway.
- Creates the route redistribution on the Tier-0 Gateway.

## Examples

### Example 1

```powershell
Update-NsxtGlobalManagerTier0Gateway -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier0Gateway sfo-m01-ec01-t0-gw01 -location lax-m01 -interfaceJsonFile .\tier0-interface.json -bgpNeighborJsonFile .\tier0-bgp-neighbor.json -bgpPassword "VMw@re1!"
```

This example updates the Tier-0 Gateway on the NSX Global Manager.

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

The NSX Tier0 Gateway to connect to.

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

### -interfaceJsonFile

The name of the interface JSON file.

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

### -bgpNeighborJsonFile

The name of the BGP neighbor JSON file.

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

### -bgpPassword

The BGP neighbor password

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
