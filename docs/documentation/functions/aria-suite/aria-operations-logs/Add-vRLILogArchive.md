# Add-vRLILogArchive

## Synopsis

Configure log archiving in VMware Aria Operations for Logs

## Syntax

```powershell
Add-vRLILogArchive [-server] <String> [-user] <String> [-pass] <String> [-emailAddress] <String> [-retentionNotificationDays] <Int32> [-retentionInterval] <String> [-retentionPeriodDays] <Int32> [-archiveLocation] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRLILogArchive` cmdlet configure log archiving in VMware Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Configure an email address to send notifications to in VMware Aria Operations for Logs
- Configure the log retention threshold in VMware Aria Operations for Logs
- Configure log archive location in VMware Aria Operations for Logs

## Examples

### Example 1

```powershell
Add-vRLILogArchive -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -emailAddress administrator@rainpole.io -retentionNotificationDays 1 -retentionInterval weeks -retentionPeriodDays 7 -archiveLocation "nfs://172.27.11.4/sfo-m01-vrli01-400GB"
```

This example configures the log archive and retention period in VMware Aria Operations for Logs.

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

The SDDC Manager administrator password.

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

### -emailAddress

The email address to send notifications to.

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

### -retentionNotificationDays

The number of days to send notifications.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -retentionInterval

The interval to send notifications "minutes","hours","days","weeks","months".

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

### -retentionPeriodDays

The number of days to retain logs.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -archiveLocation

The archive location to store logs.

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
