# Set-LocalAccountLockout

## Synopsis

Configure account lockoput for local users

## Syntax

```powershell
Set-LocalAccountLockout [-vmName] <String> [-guestUser] <String> [-guestPassword] <String> [-failures] <Int32>
 [[-unlockInterval] <Int32>] [[-rootUnlockInterval] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-LocalAccountLockout` cmdlets configures the account lockout policy local users.

## Examples

### Example 1

```powershell
Set-LocalAccountLockout -vmName sfo-w01-vc01 -guestUser root -guestPassword VMw@re1! -failures 3 -unlockInterval 900 -rootUnlockInterval 300
```

This example updates the account lockout policy for vCenter Server

### Example 2

```powershell
Set-LocalAccountLockout -vmName sfo-vcf01 -guestUser root -guestPassword VMw@re1! -failures 3 -unlockInterval 86400 -rootUnlockInterval 300
```

This example updates the account lockout policy for SDDC Manager

### Example 3

```powershell
Set-LocalAccountLockout -vmName sfo-wsa01 -guestUser root -guestPassword VMw@re1! -failures 3 -unlockInterval 900 -rootUnlockInterval 900
```

This example updates the account lockout policy for Workspace ONE Access.

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

### -failures

The maximum number of login failures.

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

### -unlockInterval

The unlock interval in seconds.

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

### -rootUnlockInterval

The root unlock interval in seconds.

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
