# Set-vRLIEmailNotification

## Synopsis

Configure email address for notifications

## Syntax

```powershell
Set-vRLIEmailNotification [-emailAddress] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLIEmailNotification` cmdlet configures the emails addresses for notifications in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Set-vRLIEmailNotification -emailAddress "administrator@rainpole.io"
```

This example adds a new email address to the notifications.

## Parameters

### -emailAddress

The email address to add to the notifications.

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
