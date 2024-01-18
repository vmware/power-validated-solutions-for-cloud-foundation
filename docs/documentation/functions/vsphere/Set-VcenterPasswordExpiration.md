# Set-VcenterPasswordExpiration

## Synopsis

Configure the global password expiration policy

## Syntax

```powershell
Set-VcenterPasswordExpiration [-maxDays] <Int32> [[-minDays] <Int32>] [[-warnDays] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VCPasswordPolicy` cmdlet configures the global password expiration policy for the vCenter Server.

## Examples

### Example 1

```powershell
Set-VcenterPasswordExpiration -maxDays 999 -minDays 0 -warnDays 14
```

This example configures the global password policy of the vCenter Server.

## Parameters

### -maxDays

The maximum number of days before a password expires.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -minDays

The minimum number of days before a password expires.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -warnDays

The number of days before a password expires that a warning is issued.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
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
