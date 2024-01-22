# Set-WsaPasswordPolicy

## Synopsis

Set password complexity and expiration policies

## Syntax

```powershell
Set-WsaPasswordPolicy [-minLen] <String> [-minLower] <String> [-minUpper] <String> [-minDigit] <String>
 [-minSpecial] <String> [-history] <String> [-maxConsecutiveIdenticalCharacters] <String>
 [-maxPreviousPasswordCharactersReused] <String> [-tempPasswordTtlInHrs] <String> [-passwordTtlInDays] <String>
 [-notificationThresholdInDays] <String> [-notificationIntervalInDays] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WsaPasswordPolicy` cmdlet set configuration of the password complexity and expiration policies for Workspace ONE Access.

## Examples

### Example 1

```powershell
Set-WsaPasswordPolicy -minLen 15 -minLower 1 -minUpper 1 -minDigit 1 -minSpecial 1 -history 5 -maxConsecutiveIdenticalCharacters 1 -maxPreviousPasswordCharactersReused 0 -tempPasswordTtlInHrs 24 -passwordTtlInDays 999 -notificationThresholdInDays 14 -notificationIntervalInDays 7
```

## Parameters

### -minLen

The minimum length of the password.

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

### -minLower

The minimum number of lowercase characters.

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

### -minUpper

The minimum number of uppercase characters.

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

### -minDigit

The minimum number of digits.

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

### -minSpecial

The minimum number of special characters.

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

### -history

The number of previous passwords to be remembered.

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

### -maxConsecutiveIdenticalCharacters

The maximum number of consecutive identical characters.

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

### -maxPreviousPasswordCharactersReused

The maximum number of previous password characters reused.

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

### -tempPasswordTtlInHrs

The temporary password time to live in hours.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -passwordTtlInDays

The password time to live in days.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -notificationThresholdInDays

The notification threshold in days.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -notificationIntervalInDays

The notification interval in days.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 12
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
