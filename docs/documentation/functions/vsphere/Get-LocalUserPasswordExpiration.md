# Get-LocalUserPasswordExpiration

## Synopsis

Retrieve the password expiration policy for a local user.

## Syntax

```powershell
Get-LocalUserPasswordExpiration [-vmName] <String> [-guestUser] <String> [-guestPassword] <String>
 [-localUser] <String> [-sudo] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-LocalUserPasswordExpiration` cmdlets retrieves the password expiration policy for a local user/.

## Examples

### Example 1

```powershell
Get-LocalUserPasswordExpiration -vmName sfo-w01-vc01 -guestUser root -guestPassword VMw@re1! -localUser root
```

This example retrieves the password expiration policy for the root user on vCenter Server sfo-w01-vc01.

### Example 2

```powershell
Get-LocalUserPasswordExpiration -vmName sfo-w01-nsx01a -guestUser root -guestPassword VMw@re1!VMw@re1! -localUser admin
```

This example retrieves the password expiration policy for the root user on vCenter Server sfo-w01-vc01.

### Example 3

```powershell
Get-LocalUserPasswordExpiration -vmName sfo-vcf01 -guestUser root -guestPassword VMw@re1! -localUser vcf
```

This example retrieves the password expiration policy for the vcf user on SDDC Manager sfo-vcf01.

### Example 4

```powershell
Get-LocalUserPasswordExpiration -vmName sfo-wsa01 -guestUser root -guestPassword VMw@re1! -localUser sshuser
```

This example retrieves the password expiration policy for the sshuser user on Workspace ONE Access sfo-sfo01.

### Example 5

```powershell
Get-LocalUserPasswordExpiration -vmName xint-vrni01a -guestUser console -guestPassword VMw@re1! -localUser support -sudo
```

This example retrieves the password expiration policy for the support user on VMware Aria Operations for Networks xint-vrni01a.

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

### -localUser

The local user name.

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

### -sudo

Use sudo to run the command.

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
