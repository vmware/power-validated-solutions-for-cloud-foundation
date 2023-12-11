# Set-vRLISmtpConfiguration

## Synopsis

Configure the SMTP server settings

## Syntax

```powershell
Set-vRLISmtpConfiguration [-smtpServer] <String> [-port] <String> [-sender] <String> [[-username] <String>]
 [[-password] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLISmtpConfiguration` cmdlet configures the SMTP server settings in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLISmtpConfiguration -smtpServer smtp.rainpole.io -port 25 -sender administrator@rainpole.io -username administrator@rainpole.io -password VMw@re1!
```

This example sets the SMTP server settings.

## Parameters

### -smtpServer

The SMTP server address.

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

The SMTP server port.

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

### -sender

The sender email address.

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

### -username

The SMTP server username.

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

### -password

The SMTP server password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
