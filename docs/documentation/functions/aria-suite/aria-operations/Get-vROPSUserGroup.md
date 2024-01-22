# Get-vROPSUserGroup

## Synopsis

Get list of local user groups using identifiers or/and names

## Syntax

```powershell
Get-vROPSUserGroup [[-id] <String>] [[-name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSUserGroup` cmdlet gets list of local user groups in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSUserGroup
```

This example gets a list of all available authentication sources

### Example 2

```powershell
Get-vROPSUserGroup [[-id] <String>]
```

This example gets detailed information about the provided user group using the ID

### Example 3

```powershell
Get-vROPSUserGroup [[-id] <String>] [[-name] <String>]
```

This example gets detailed information about the provided user group using the name.

## Parameters

### -id

The ID of the user group to get.

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

### -name

The name of the user group to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
