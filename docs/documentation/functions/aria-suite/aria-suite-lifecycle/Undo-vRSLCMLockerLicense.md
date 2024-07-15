# Undo-vRSLCMLockerLicense

## Synopsis

Remove a license to the VMware Aria Suite Lifecycle locker

## Syntax

```powershell
Undo-vRSLCMLockerLicense [-server] <String> [-user] <String> [-pass] <String> [-alias] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRSLCMLockerLicense` cmdlet removes a license from the VMware Aria Suite Lifecycle locker.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values then:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Verifies that the license is present in the VMware Aria Suite Lifecycle locker
- Removes the license to the VMware Aria Suite Lifecycle locker

## Examples

### Example 1

```powershell
Undo-vRSLCMLockerLicense -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -alias "VMware Aria Automation"
```

This example removes a license with an alias of 'VMware Aria Automation' from the VMware Aria Suite Lifecycle locker.

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

The username to authenticate to the SDDC Manager.

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

The password to authenticate to the SDDC Manager.

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

The alias of the license to remove from the VMware Aria Suite Lifecycle locker.

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
