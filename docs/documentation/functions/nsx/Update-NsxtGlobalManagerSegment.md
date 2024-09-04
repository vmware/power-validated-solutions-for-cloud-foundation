# Update-NsxtGlobalManagerSegment

## Synopsis

Update the NSX segment in the NSX Global Manager instance.

## Syntax

```powershell
Update-NsxtGlobalManagerSegment [-server] <String> [-user] <String> [-pass] <String> [-tier1Gateway] <String> [-segmentName] <String> [<CommonParameters>]
```

## Description

The `Update-NsxtGlobalManagerSegment` cmdlet updates the NSX segment in the NSX Global Manager instance.

- Validates that network connectivity and authentication is possible to NSX Global Manager.
- Validates that the given tier 0 gateway and segment exist in the NSX Global Manager.
- Updates the NSX segment in the NSX Global Manager instance.

## Examples

### Example 1

```powershell
Update-NsxtGlobalManagerSegment -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier1Gateway "xint-m01-ec01-t1-gw01" -segmentName "xint-m01-seg01"
```

This example updates the NSX segment in the NSX Global Manager instance.

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

### -tier1Gateway

The NSX Tier1 gateway name.

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

### -segmentName

The segment name to update.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
