# Update-NsxtGlobalManagerTier0LocaleService

## Synopsis

Update the locale services on Tier-0 Gateway.

## Syntax

```powershell
Update-NsxtGlobalManagerTier0LocaleService [-server] <String> [-user] <String> [-pass] <String> [-tier0Gateway] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `Update-NsxtGlobalManagerTier0LocaleService` cmdlet updates the locale services on Tier-0 Gateway.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given Tier-0 Gateway and location exist in the NSX Global Manager.
- Updates the locale services on Tier-0 Gateway

## Examples

### Example 1

```powershell
Update-NsxtGlobalManagerTier0LocaleService -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier0Gateway sfo-m01-ec01-t0-gw01 -location lax-m01
```

This example updates the locale services on Tier-0 Gateway.

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

The name of the Tier-0 Gateway.

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
