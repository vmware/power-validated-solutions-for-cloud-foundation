# New-NsxtSegment

## Synopsis

Create a new NSX Segment

## Syntax

```powershell
New-NsxtSegment [-Name] <String> [[-ConnectedGateway] <String>] [[-Cidr] <String>] [-TransportZone] <String>
 [[-GatewayType] <String>] [-SegmentType] <String> [[-VlanId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-NsxtSegment` cmdlet creates NSX Segments.

## Examples

### Example 1

```powershell
New-NsxtSegment -Name "sfo-w01-xreg-seg01" -GatewayType "Tier1" -ConnectedGateway "sfo-w01-ec01-t1-gw01" -Cidr "192.168.31.1/24" -TransportZone "overlay-tz-sfo-w01-nsx01.sfo.rainpole.io"
```

This example creates an NSX Overlay Segment with the name "sfo-w01-xreg-seg01", connected to Tier-1 gateway "sfo-w01-ec01-t1-gw01", Transport Zone "overlay-tz-sfo-w01-nsx01.sfo.rainpole.io", and CIDR address of "192.168.31.1/24".

## Parameters

### -Name

The NSX Segment name.

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

### -ConnectedGateway

The NSX Gateway name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cidr

The CIDR address.

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

### -TransportZone

The NSX Transport Zone name.

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

### -GatewayType

The NSX Gateway type (Tier0 or Tier1).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SegmentType

The NSX Segment type (Overlay or VLAN).

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

### -VlanId

The NSX VLAN ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
