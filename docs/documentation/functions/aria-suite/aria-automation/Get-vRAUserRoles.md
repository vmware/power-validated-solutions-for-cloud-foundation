# Get-vRAUserRoles

## Synopsis

Get the user roles.

## Syntax

```powershell
Get-vRAUserRoles [-userId] <String> [-orgId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAUser` Roles cmdlet returns a user's roles in VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAUserRoles -userId $userId -orgId $orgId
```

This example returns a user's roles from VMware Aria Automation by userId and orgId.

## Parameters

### -userId

The userId to get the roles for.

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

### -orgId

The organization Id to get the roles for.

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
