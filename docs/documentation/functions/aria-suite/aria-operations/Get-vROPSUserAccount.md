# Get-vROPSUserAccount

## Synopsis

Get list of local user accounts using identifiers or/and names.

## Syntax

```powershell
Get-vROPSUserAccount [[-id] <String>] [[-username] <String>] [[-roleName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSUserAccount` cmdlet gets a user account in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSUserAccount
```

This example gets a list of all available authentication sources.

### Example 2

```powershell
Get-vROPSUserAccount -id <string>
```

This example gets detailed information about the user account using the ID.

## Parameters

### -id

The ID of the user account to get.

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

### -username

The username of the user account to get.

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

### -roleName

The role name of the user account to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
