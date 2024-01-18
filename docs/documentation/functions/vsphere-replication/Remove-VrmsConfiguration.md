# Remove-VrmsConfiguration

## Synopsis

Remove the configuration

## Syntax

```powershell
Remove-VrmsConfiguration [-ssoUser] <String> [-ssoPassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-VrmsConfiguration` cmdlet removes the vCenter Server registration for a vSphere Replication appliance.

## Examples

### Example 1

```powershell
Remove-VrmsConfiguration -ssoUser administrator@vsphere.local -ssoPassword VMw@re1!
```

This example removes the vCenter Server registration for the vSphere Replication appliance.

## Parameters

### -ssoUser

The ssoUser parameter The SSO user to be used to remove the vCenter Server registration.

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

The ssoPassword parameter The SSO password to be used to remove the vCenter Server registration.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
