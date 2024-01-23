# Get-NsxtLdap

## Synopsis

Get LDAP configuration

## Syntax

```powershell
Get-NsxtLdap [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtLdap` cmdlet gets the LDAP configuration.

## Examples

### Example 1

```powershell
Get-NsxtLdap
```

This example retrives a list of all configure LDAP identiry sources

### Example 2

```powershell
Get-NsxtLdap -id sfo
```

This example retrives the details of a one LDAP identity source.

## Parameters

### -id

The LDAP identity source ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
