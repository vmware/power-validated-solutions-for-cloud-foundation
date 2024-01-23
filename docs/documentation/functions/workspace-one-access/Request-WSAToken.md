# Request-WSAToken

## Synopsis

Connects to the specified Workspace ONE Access instance to obtain a session token

## Syntax

```powershell
Request-WSAToken [-fqdn] <String> [[-user] <String>] [[-pass] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-WSAToken` cmdlet connects to the specified Workspace ONE Access instance and requests a session token.

## Examples

### Example 1

```powershell
Request-WSAToken -fqdn sfo-wsa01.sfo.rainpole.io -user admin -pass VMware1!
```

This example shows how to connect to a Workspace ONE Access instance and request a session token.

## Parameters

### -fqdn

The Workspace ONE Access FQDN.

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

The Workspace ONE Access user name.

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

### -pass

The Workspace ONE Access user password.

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
