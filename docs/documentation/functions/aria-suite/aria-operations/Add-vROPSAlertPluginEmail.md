# Add-vROPSAlertPluginEmail

## Synopsis

Adds an Email based Alert Plugin

## Syntax

```powershell
Add-vROPSAlertPluginEmail [-server] <String> [-user] <String> [-pass] <String> [-pluginName] <String>
 [-smtpServer] <String> [-smtpPort] <String> [-senderAddress] <String> [-secureConnection] <String>
 [[-protocol] <String>] [-authentication] <String> [[-authUser] <String>] [[-authPass] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAlertPluginEmail` cmdlet adds an Email based Alert Plugin in VMware Aria Operations.
The
cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the Email Alert Plugin does not exist in VMware Aria Operations
- Creates a new Email Alert Plugin and enables it in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAlertPluginEmail -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -pluginName "Email-Alert-Plugin" -smtpServer smtp.rainpole.io -smtpPort 25 -senderAddress "vrops-alerts@rainpole.io" -secureConnection true -protocol TLS -authentication false
```

This example creates and enables an Email Alert Plugin in VMware Aria Operations without authentication

### Example 2

```powershell
Add-vROPSAlertPluginEmail -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -pluginName "Email-Alert-Plugin" -smtpServer smtp.rainpole.io -smtpPort 25 -senderAddress "vrops-alerts@rainpole.io" -secureConnection true -protocol TLS -authentication true -authUser administrator -authPass VMw@re1!
```

This example creates and enables an Email Alert Plugin in VMware Aria Operations with authentication.

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

The username used to connect to the SDDC Manager.

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

### -pluginName

The name of the Email Alert Plugin.

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

### -smtpServer

The SMTP server to use for sending emails.

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

### -smtpPort

The SMTP port to use for sending emails.

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

### -senderAddress

The email address to use for sending emails.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -secureConnection

Whether to use a secure connection or not.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -protocol

The protocol to use for the secure connection.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -authentication

Whether to use authentication or not.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -authUser

The username to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -authPass

The password to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
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
