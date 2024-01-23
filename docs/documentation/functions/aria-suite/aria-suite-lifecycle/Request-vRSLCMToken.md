# Request-vRSLCMToken

## Synopsis

Connects to the specified VMware Aria Suite Lifecycle and obtains authorization token

## Syntax

```powershell
Request-vRSLCMToken [-fqdn] <String> [[-username] <String>] [[-password] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-vRSLCMToken` cmdlet connects to the specified VMware Aria Suite Lifecycle and obtains an
authorization token.
It is required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-vRSLCMToken -fqdn xreg-vrslcm.rainpole.io -username admin@local -password VMware1!
```

This example shows how to connect to the VMware Aria Suite Lifecycle appliance.

## Parameters

### -fqdn

The fully qualified domain name of the VMware Aria Suite Lifecycle appliance.

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

### -username

The username of the VMware Aria Suite Lifecycle appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -password

The password of the VMware Aria Suite Lifecycle appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
