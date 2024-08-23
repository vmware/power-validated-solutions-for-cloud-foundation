# Add-NsxtGlobalManagerLocation

## Synopsis

Configures an NSX Local Manager in NSX Global Manager.

## Syntax

```powershell
Add-NsxtGlobalManagerLocation [-server] <String> [-user] <String> [-pass] <String> [-globalManager] <String> [-location] <String> [-localManagerFqdn] <String> [-localManagerUser] <String> [-localManagerPass] <String> [-edgeNodes] <Array> [<CommonParameters>]
```

## Description

The `Add-NsxtGlobalManagerLocation` cmdlet configures an NSX Local Manager in NSX Global Manager.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Adds and configures the NSX Local Manager in the NSX Global Manager

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerLocation -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -globalManager sfo-m01-nsx-gm01.sfo.rainpole.io -location sfo-m01 -localManagerFqdn sfo-m01-nsx01.sfo.rainpole.io -localManagerUser admin -localManagerPass VMw@re1!VMw@re1! -edgeNodes @("sfo-m01-r01-en01","sfo-m01-r01-en02")
```

This example adds the NSX Local Manager to to the NSX Global Manager.

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

### -localManagerFqdn

The fully qualified domain name of the NSX Local Manager.

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

### -localManagerUser

The password to authenticate to the standby NSX Local Manager.

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

### -localManagerPass

The password to authenticate to the standby NSX Local Manager.

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

### -edgeNodes

An array of the NSX Edge nodes to be configured.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
