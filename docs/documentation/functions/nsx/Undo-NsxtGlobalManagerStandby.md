# Undo-NsxtGlobalManagerStandby

## Synopsis

Remove the standby mode configuration from the NSX Global Manager.

## Syntax

```powershell
Undo-NsxtGlobalManagerStandby [-server] <String> [-user] <String> [-pass] <String> [-standbyServer] <String> [-standbyDisplayName] <String> [<CommonParameters>]
```

## DESCRIPTION

The `Undo-NsxtGlobalManagerStandby` cmdlet removes the standby mode configuration from the NSX Global Manager.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Removes the standby mode configuration from the NSX Global Manager

## Examples

### Example 1

```powershell
Undo-NsxtGlobalManagerStandby -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -standbyServer lax-m01-nsx-gm01.lax.rainpole.io -standbyDisplayName lax-m01-nsx-gm01
```

This example the standby mode configuration from the NSX Global Manager.

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

### -standbyServer

The fully qualified domain name of the standby NSX Global Manager.

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

### -standbyDisplayName

Display name of the standby NSX Global Manager.

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
