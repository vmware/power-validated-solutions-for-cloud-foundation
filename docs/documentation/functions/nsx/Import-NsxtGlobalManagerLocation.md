# Import-NsxtGlobalManagerLocation

## Synopsis

Imports objects from an NSX Local Manager to NSX Global Manager.

## Syntax

```powershell
Import-NsxtGlobalManagerLocation [-server] <String> [-user] <String> [-pass] <String> [-globalManager] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `Import-NsxtGlobalManagerLocation` cmdlet imports objects from the NSX Local Manager to NSX Global Manager.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Imports the NSX Local Manager objects into the NSX Global Manager

## Examples

### Example 1

```powershell
Import-NsxtGlobalManagerLocation -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -globalManager sfo-m01-nsx-gm01.sfo.rainpole.io -location sfo-m01
```

This example imports the NSX Local Manager objects into NSX Global Manager.

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

### -globalManager

The display name of the NSX Global Manager.

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

The location name for the NSX Local Manager.

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
