# Update-vRLIAlert

## Synopsis

Update the configuration of an alert

## Syntax

```powershell
Update-vRLIAlert [-id] <String> [[-email] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vRLIAlert` cmdlet updates the configuration of an existing alert in VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Update-vRLIAlert -id 0111952f-9aec-3872-b108-d70ec8a2981a -email administrator@rainpole.io
```

This example adds a single email address to an alert in VMware Aria Operations for Logs.

## Parameters

### -id

The ID of the alert to update.

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

### -email

The email address to add to the alert.

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
