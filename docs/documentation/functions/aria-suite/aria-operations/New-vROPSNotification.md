# New-vROPSNotification

## Synopsis

Create notifications in VMware Aria Operations.

## SYNTAX

```powershell
New-vROPSNotification [-jsonPath] <String> [-alertPluginName] <String> [-emailAddress] <String> [<CommonParameters>]
```

## Description

The `New-vROPSNotification` cmdlet creates notifications in VMware Aria Operations.

## Examples

### Example 1

```powershell
New-vROPSNotification -jsonPath .\SampleNotifications\aria-operations-notifications-vcf.json -alertPluginName Email-Alert-Plugin -emailAddress administrator@rainpole.io
```

This example adds all the notifications in the json file to VMware Aria Operations using an email based alert plugin.

## Parameters

### -jsonPath

The path to the JSON file containing the notifications to add.

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

### -alertPluginName

The name of the alert plugin in VMware Aria Operations.

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

### -emailAddress

The email address to be configured on the alert.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
