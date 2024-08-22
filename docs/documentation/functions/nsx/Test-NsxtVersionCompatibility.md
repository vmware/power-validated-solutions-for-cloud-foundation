# Test-NsxtVersionCompatibility

## Synopsis

Checks the NSX Manager version compatibility.

## Syntax

```powershell
Test-NsxtVersionCompatibility [-fqdn] <String> [-username] <String> [-password] <String> [<CommonParameters>]
```

## Description

The `Test-NsxtVersionCompatibility` cmdlet checks the NSX version compatibility between NSX Managers.

## Examples

### Example 1

```powershell
Test-NsxtVersionCompatibility -fqdn lax-m01-nsx-gm01.lax.rainpole.io -username  admin -password VMw@re1!VMw@re1!
```

This example checks the NSX version compatibility between the connected NSX Manager and lax-m01-nsx-gm01.lax.rainpole.io.

## Parameters

### -fqdn

The fully qualified domain name of the standby NSX Global Manager.

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

The username to authenticate to the standby NSX Global Manager.

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

The password to authenticate to the standby NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
