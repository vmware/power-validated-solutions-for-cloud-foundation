# Remove-SrmConfiguration

## Synopsis

Remove the configuration

## Syntax

```powershell
Remove-SrmConfiguration [-ssoUser] <String> [-ssoPassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-SrmConfiguration` cmdlet removes the vCenter Server registration for a vSphere Replication appliance.

## Examples

### Example 1

```powershell
Remove-SrmConfiguration -ssoUser administrator@vsphere.local -ssoPassword VMw@re1!
```

This example removes the vCenter Server registration for the vSphere Replication appliance.

## Parameters

### -ssoUser

The SSO user for the vCenter Server registration.

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

### -ssoPassword

The SSO password for the vCenter Server registration.

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
