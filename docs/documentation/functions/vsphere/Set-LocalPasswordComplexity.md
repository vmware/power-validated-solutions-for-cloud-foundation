# Set-LocalPasswordComplexity

## Synopsis

Configure password complexity for local users

## Syntax

```powershell
Set-LocalPasswordComplexity [-vmName] <String> [-guestUser] <String> [-guestPassword] <String>
 [-minLength] <Int32> [[-uppercase] <Int32>] [[-lowercase] <Int32>] [[-numerical] <Int32>] [[-special] <Int32>]
 [[-unique] <Int32>] [[-history] <Int32>] [[-retry] <Int32>] [[-class] <Int32>] [[-sequence] <Int32>] [-nsx] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-LocalPasswordComplexity` cmdlets configures the password complexity local users.

## Examples

### Example 1

```powershell
Set-LocalPasswordComplexity -vmName sfo-w01-vc01 -guestUser root -guestPassword VMw@re1! -minLength 7 -uppercase 1 -lowercase 1 -numerical 1 -special 1 -unique 5 -history 3
```

This example updates the vCenter Server sfo-w01-vc01 with new values for each element

### Example 2

```powershell
Set-LocalPasswordComplexity -vmName sfo-w01-vc01 -guestUser root -guestPassword VMw@re1! -minLength 6 -uppercase "-1" -lowercase "-1" -numerical "-1" -special "-1" -unique 4 -history 5
```

This example updates the vCenter Server sfo-w01-vc01 with the default values

### Example 3

```powershell
Set-LocalPasswordComplexity -vmName sfo-w01-nsx01a -guestUser root -guestPassword VMw@re1!VMw@re1! -nsx -minLength 15 -uppercase "-1" -lowercase "-1" -numerical "-1" -special "-1" -unique 0 -history 5 
```

This example updates the NSX Manager sfo-w01-nsx01a with the values.

## Parameters

### -vmName

The virtual machine name.

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

### -guestUser

The guest user name.

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

### -guestPassword

The guest user password.

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

### -minLength

The minimum number of characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -uppercase

The maximum number of uppercase characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -lowercase

The maximum number of lowercase characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -numerical

The maximum number of numerical characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -special

The maximum number of special characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -unique

The minimum number of unique characters in a password.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -history

The number of passwords to remember.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -retry

The number of retries.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -class

The minimum number of character classes.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -sequence

The maximum number of repeated characters.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -nsx

The NSX Manager flag.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
