# Import-vROPSNotification

## Synopsis

Adds notifications to VMware Aria Operations.

## Syntax

```powershell
Import-vROPSNotification [-server] <String> [-user] <String> [-pass] <String> [[-jsonPath] <String>] [-alertPluginName] <String> [-emailAddress] <String> [-notificationInterval] <String> [-notificationMax] <String> [-notificationDelay] <String> [<CommonParameters>]
```

## Description

The `Import-vROPSNotification` cmdlet adds notifications in VMware Aria Operations. The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the json provided exists
- Adds notifications based on a .json file into VMware Aria Operations

## Examples

### Example 1

```powershell
Import-vROPSNotification -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonPath .\SampleNotifications\aria-operations-notifications-vcf.json -alertPluginName Email-Alert-Plugin -emailAddress administrator@rainpole.io -notificationInterval 15 -notificationMax 3 -notificationDelay 15
```

This example adds notifications based on the comma separated value file provided to VMware Aria Operations.

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

The username to authenticate to the SDDC Manager.

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

### -jsonPath

The path to the JSON file containing the notifications to add.

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

### -alertPluginName

The name of the alert plugin in VMware Aria Operations.

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

### -emailAddress

The email address to be configured on the alert.

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

### -notificationInterval

The interval to resend the email if the alert has not been resolved (in minutes).

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

### -notificationMax

The maximum number of emails to send if the alert has not been resolved.

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

### -notificationDelay

The time to wait before sending an email if the alert has not been resolved (in minutes).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
