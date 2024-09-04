# Add-NsxtGlobalManagerTier1Gateway

## Synopsis

Create a Tier 1 Gateway on the NSX Global Manager.

## Syntax

```powershell
Add-NsxtGlobalManagerTier1Gateway [-server] <String> [-user] <String> [-pass] <String> [-tier1Gateway] <String> [-tier0Gateway] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `Add-NsxtGlobalManagerTier1Gateway` cmdlet creates a Tier 1 Gateway on the NSX Global Manager.

- Validates that network connectivity and authentication are possible to NSX Global Manager.
- Validates that the given tier 0 gateway and location exist in the NSX Global Manager.
- Creates a Tier 1 Gateway on the NSX Global Manager.
- Creates the locale service on Tier 1 Gateway.

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerTier1Gateway -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier1Gateway xint-m01-ec01-t1-gw01 -tier0Gateway sfo-m01-ec01-t0-gw01 -location sfo-m01
```

This example creates a Tier 1 Gateway on the NSX Global Manager.

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

The NSX Tier1 Gateway name to create.

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

### -location

The name of the location.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
