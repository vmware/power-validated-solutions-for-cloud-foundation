# Update-NsxtGlobalManagerTier1Gateway

## Synopsis

Update the Tier 1 Gateway on the NSX Global Manager.

## Syntax

```powershell
Update-NsxtGlobalManagerTier1Gateway [-server] <String> [-user] <String> [-pass] <String> [-tier1Gateway] <String> [-tier0Gateway] <String> [<CommonParameters>]
```

## Description

The `Update-NsxtGlobalManagerTier1Gateway` cmdlet updates the Tier 1 Gateway on the NSX Global Manager.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given tier 0 gateway and location exist in the NSX Global Manager.
- Updates the Tier 1 Gateway on the NSX Global Manager.

## Examples

### Example 1

```powershell
Update-NsxtGlobalManagerTier1Gateway -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier1Gateway lax-m01-ec01-t1-gw01 -tier0Gateway sfo-m01-ec01-t0-gw01
```

This example updates the Tier 1 Gateway on the NSX Global Manager.

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

The NSX Tier1 Gateway name to update.

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

### -tier0Gateway

The NSX Tier0 Gateway to connect to.

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
