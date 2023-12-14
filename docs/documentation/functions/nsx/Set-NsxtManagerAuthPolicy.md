# Set-NsxtManagerAuthPolicy

## Synopsis

Set the Authentication Policy for NSX Manager Node

## Syntax

```powershell
Set-NsxtManagerAuthPolicy [-nsxtManagerNode] <String> [[-api_lockout_period] <Int32>]
 [[-api_reset_period] <Int32>] [[-api_max_attempt] <Int32>] [[-cli_lockout_period] <Int32>]
 [[-cli_max_attempt] <Int32>] [[-min_passwd_length] <Int32>] [[-maximum_password_length] <Int32>]
 [[-digits] <Int32>] [[-lower_chars] <Int32>] [[-upper_chars] <Int32>] [[-special_chars] <Int32>]
 [[-max_repeats] <Int32>] [[-max_sequence] <Int32>] [[-minimum_unique_chars] <Int32>]
 [[-hash_algorithm] <String>] [[-password_remembrance] <Int32>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Set-NsxtManagerAuthPolicy` cmdlet configures the authentication policy for NSX Manager Node.

## Examples

### Example 1

```powershell
Set-NsxtManagerAuthPolicy -nsxtManagerNode "sfo-m01-nsx01a.sfo.rainpole.io" -api_lockout_period 900 -api_reset_period 120 -api_max_attempt 5 -cli_lockout_period 900 -cli_max_attempt 5 -min_passwd_length 15 -maximum_password_length 30 -digits 10 -lower_chars -1 -upper_chars -1 -special_chars -1 -max_repeats 2 -max_sequence 3 -minimum_unique_chars 0 -password_remembrance 5 -hash_algorithm "sha512"
```

This example customized the Authentication policy in NSX manager node sfo-m01-nsx01a.sfo.rainpole.io.

## Parameters

### -nsxtManagerNode

The NSX Manager Node name.

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

### -api_lockout_period

The API lockout period in seconds.

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

### -api_reset_period

The API reset period in seconds.

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

### -api_max_attempt

The API max attempts.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -cli_lockout_period

The CLI lockout period in seconds.

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

### -cli_max_attempt

The CLI max attempts.

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

### -min_passwd_length

The minimum password length.

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

### -maximum_password_length

The maximum password length.

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

### -digits

The number of digits.

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

### -lower_chars

The number of lower case characters.

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

### -upper_chars

The number of upper case characters.

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

### -special_chars

The number of special characters.

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

### -max_repeats

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

### -max_sequence

The maximum number of sequential characters.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -minimum_unique_chars

The minimum number of sequential characters.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -hash_algorithm

The hash algorithm.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -password_remembrance

The password remembrance.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
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
