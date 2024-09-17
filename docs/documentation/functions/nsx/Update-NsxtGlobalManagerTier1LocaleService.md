# Update-NsxtGlobalManagerTier1LocaleService

## Synopsis

Update the locale services on Tier-1 Gateway.

## Syntax

```powershell
Update-NsxtGlobalManagerTier1LocaleService [-server] <String> [-user] <String> [-pass] <String> [-tier1Gateway] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `Update-NsxtGlobalManagerTier1LocaleService` cmdlet updates the locale services on Tier-1 Gateway.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given Tier-1 gateway and location exist in the NSX Global Manager.
- Updates locale services on Tier-1 Gateway.

## Examples

### Example 1

```powershell
Update-NsxtGlobalManagerTier1LocaleService -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier1Gateway lax-m01-ec01-t1-gw01 -location lax-m01
```

This example updates the locale services on Tier-1 Gateway.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
