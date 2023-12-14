# Set-WSASmtpConfiguration

## Synopsis

Set SMTP configuration

## Syntax

```powershell
Set-WSASmtpConfiguration [-fqdn] <String> [-port] <String> [-user] <String> [[-pass] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WSASmtpConfiguration` cmdlets configures the SMTP configuration of Workspace ONE Access.

## Examples

### Example 1

```powershell
Set-WSASmtpConfiguration
```

This example sets the SMTP configuration of Workspace ONE Access.

## Parameters

### -fqdn

The FQDN of the SMTP server.

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

### -port

The port of the SMTP server.

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

### -user

The user name of the SMTP server.

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

### -pass

The password of the SMTP server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
