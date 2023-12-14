# Set-VcenterRootPasswordExpiration

## Synopsis

Set the vcenter password expiry date

## Syntax

### expire

```powershell
Set-VcenterRootPasswordExpiration [-email <String>] [-maxDays <String>] [-warnDays <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### neverexpire

```powershell
Set-VcenterRootPasswordExpiration [-neverexpire] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VcenterRootPasswordExpiration` cmdlet configures password expiration settings for the vCenter Server root account.

## Examples

### Example 1

```powershell
Set-VcenterRootPasswordExpiration -email "admin@rainpole.io" -maxDays 999 -warnDays 14
```

This example configures the configures password expiration settings for the vCenter Server root account

### Example 2

```powershell
Set-VcenterRootPasswordExpiration -neverexpire
```

This example configures the configures password expiration settings for the vCenter Server root account to never expire.

## Parameters

### -email

The email address to send password expiration notifications to.

```yaml
Type: String
Parameter Sets: expire
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -maxDays

The maximum number of days before a password expires.

```yaml
Type: String
Parameter Sets: expire
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -warnDays

The number of days before a password expires that a warning is issued.

```yaml
Type: String
Parameter Sets: expire
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -neverexpire

Set the password to never expire.

```yaml
Type: SwitchParameter
Parameter Sets: neverexpire
Aliases:

Required: False
Position: Named
Default value: False
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
