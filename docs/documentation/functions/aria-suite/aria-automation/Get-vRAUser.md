# Get-vRAUser

## Synopsis

Get the user in an organization.

## Syntax

```powershell
Get-vRAUser [-orgId] <String> [-email] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAUser` cmdlet returns the user information from an organization in VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAUser -orgId $orgId -email jdoe@rainpole.io
```

This example returns the user information for an organization in VMware Aria Automation by orgId and email.

## Parameters

### -orgId

The organization Id to get the user for.

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

The email address of the user to get.

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
