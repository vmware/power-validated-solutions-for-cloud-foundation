# New-vRANotification

## Synopsis

Add notification configuration

## Syntax

```powershell
New-vRANotification -name <String> -serverName <String> -emailAddress <String> -sender <String> -trustCert <String> -connection <String> -authentication <String> [-userName <String>] [-password <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRANotification` cmdlet adds the notification configuration in VMware Aria Automation.

## Examples

### Example 1

```powershell
New-vRANotification -name smtp.rainpole.io -serverName smtp.rainpole.io -emailAddress vra-no-reply@rainpole.io -sender administrator -trustCert true -connection NONE -authentication false
```

This example adds the notification configuration in VMware Aria Automation without authentication

### Example 2

```powershell
New-vRANotification -name smtp.rainpole.io -serverName smtp.rainpole.io -emailAddress vra-no-reply@rainpole.io -sender administrator -trustCert true -connection NONE -authentication true -username administrator -password VMw@re1!
```

This example adds the notification configuration in VMware Aria Automation with authentication.

## Parameters

### -name

The name of the notification configuration.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serverName

The name of the SMTP server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -emailAddress

The email address to send notifications from.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -sender

The name of the sender.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -trustCert

Trust the certificate of the SMTP server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -connection

The connection type, NONE, SSL or STARTTLS.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -authentication

Enable authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -userName

The username to authenticate with.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -password

The password to authenticate with.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
