# Request-vROPSToken

## Synopsis

Connects to the specified VMware Aria Operations and obtains authorization token

## Syntax

```powershell
Request-vROPSToken [-fqdn] <String> [-username] <String> [-password] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-vROPSToken` cmdlet connects to the specified VMware Aria Operations and obtains an authorization token.
It is required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-vROPSToken -fqdn xint-vrops01.rainpole.io -username admin -password VMw@re1!
```

This example shows how to connect to the VMware Aria Operations appliance.

## Parameters

### -fqdn

The fully qualified domain name of the VMware Aria Operations appliance.

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

The username to use for authentication.

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

### -password

The password to use for authentication.

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
