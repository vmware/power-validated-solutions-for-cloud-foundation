# Set-WorkspaceOneSmtpConfig

## Synopsis

Configure SMTP Server on Workspace ONE Access Appliance

## Syntax

```powershell
Set-WorkspaceOneSmtpConfig [-server] <String> [-user] <String> [-pass] <String> [-smtpFqdn] <String>
 [-smtpPort] <String> [-smtpEmail] <String> [[-smtpEmailPassword] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WorkspaceOneSmtpConfig` cmdlet configures the SMTP Server details of the Workspace ONE Access Appliance.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to Workspace ONE Access
- Configures the SMTP Server settings.

## Examples

### Example 1

```powershell
Set-WorkspaceOneSmtpConfig -server sfo-wsa01.sfo.rainpole.io -user admin -pass VMw@re1! -smtpFqdn smtp.sfo.rainpole.io -smtpPort 25 -smtpEmail sfo-wsa@rainpole.io
```

This example configures the Workspace ONE Access Virtual Appliance sfo-wsa01.sfo.rainpole.io with the SMTP Server details.

## Parameters

### -server

The FQDN of the Workspace ONE Access Virtual Appliance.

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

The admin username of the Workspace ONE Access Virtual Appliance.

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

The admin password of the Workspace ONE Access Virtual Appliance.

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

### -smtpFqdn

The FQDN of the SMTP Server.

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

### -smtpPort

The port of the SMTP Server.

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

### -smtpEmail

The email address to send emails from.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -smtpEmailPassword

The password of the email address to send emails from.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
