# New-vRSLCMLockerPassword

## Synopsis

Add a password to the VMware Aria Suite Lifecycle locker Locker

## Syntax

```powershell
New-vRSLCMLockerPassword [-server] <String> [-user] <String> [-pass] <String> [-alias] <String>
 [-password] <String> [[-description] <String>] [-userName] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `New-vRSLCMLockerPassword` cmdlet adds a password to the VMware Aria Suite Lifecycle locker.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values then:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Verifies that the password is not present in the VMware Aria Suite Lifecycle locker
- Adds the password to the VMware Aria Suite Lifecycle locker.

## Examples

### Example 1

```powershell
New-vRSLCMLockerPassword -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -alias xint-vrops01-admin -password VMw@re1! -description "VMware Aria Operations Admin" -userName xint-vrops01-admin
```

This example adds a password with an alias of 'xint-vrops01-admin' to the VMware Aria Suite Lifecycle locker.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The SDDC Manager admin user.

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

### -pass

The SDDC Manager admin password.

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

### -alias

The alias of the password to add to the VMware Aria Suite Lifecycle locker.

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

### -password

The password to add to the VMware Aria Suite Lifecycle locker.

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

### -description

The description of the password to add to the VMware Aria Suite Lifecycle locker.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -userName

The username of the password to add to the VMware Aria Suite Lifecycle locker.

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
