# Undo-NsxtGlobalManagerTier0Gateway

## Synopsis

Remove the Tier 0 Gateway from the NSX Global Manager.

## Syntax

```powershell
Undo-NsxtGlobalManagerTier0Gateway [-server] <String> [-user] <String> [-pass] <String> [-tier0Gateway] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `Undo-NsxtGlobalManagerTier0Gateway` cmdlet removes the Tier 0 Gateway from the NSX Global Manager.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Removes the locale service of Tier 0 Gateway from the NSX Global Manager if configured.
- Removes the Tier 0 Gateway from the NSX Global Manager.

## Examples

### Example 1

```powershell
Undo-NsxtGlobalManagerTier0Gateway -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -tier0Gateway "lax-m01-ec01-t0-gw01" -location "lax-m01"
```

This example removes the Tier 0 Gateway from the NSX Global Manager.

## Parameters

### -server

The fully qualified domain name of the active NSX Global Manager.

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

The username to authenticate to the NSX active Global Manager.

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

The password to authenticate to the active NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
