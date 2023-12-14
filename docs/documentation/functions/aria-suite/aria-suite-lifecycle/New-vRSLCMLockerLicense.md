# New-vRSLCMLockerLicense

## Synopsis

Add a license to the VMware Aria Suite Lifecycle locker

## Syntax

```powershell
New-vRSLCMLockerLicense [-server] <String> [-user] <String> [-pass] <String> [-alias] <String>
 [-license] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRSLCMLockerLicense` cmdlet adds a license to the Aria Suite Lifecycle locker.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values then:

- Validates that network connectivity and authentication is possible to SDDC Manager
- CValidates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Verifies that the license is not present in the VMware Aria Suite Lifecycle locker
- Adds the license to the VMware Aria Suite Lifecycle locker.

## Examples

### Example 1

```powershell
New-vRSLCMLockerLicense -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -alias "VMware Aria Automation" -license "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
```

This example adds a license with an alias of 'VMware Aria Automation' to the VMware Aria Suite Lifecycle locker.

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

The alias of the license to add to the VMware Aria Suite Lifecycle locker.

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

### -license

The license key to add to the VMware Aria Suite Lifecycle locker.

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
