# New-NsxtGlobalManagerLocation

## Synopsis

Configure a location in the location manager.

## Syntax

```powershell
New-NsxtGlobalManagerLocation [-fqdn] <String> [-username] <String> [-password] <String> [-location] <String> [<CommonParameters>]
```

## Description

The `New-NsxtGlobalManagerLocation` cmdlet configures a location in the location manager of the NSX Global Manager.

## Examples

### Example 1

```powershell
New-NsxtGlobalManagerLocation -fqdn sfo-m01-nsx01.sfo.rainpole.io -username admin -password VMw@re1!VMw@re1! -location sfo-m01
```

This example creates a new location in the local manager of the connected NSX Manager.

## Parameters

### -fqdn

The fully qualified domain name of the NSX Manager.

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

### -username

The username to authenticate to the NSX Manager.

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

### -password

The password to authenticate to the NSX Manager.

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

### -location

The name of the location to be created.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
