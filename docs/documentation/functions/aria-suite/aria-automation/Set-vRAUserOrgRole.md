# Set-vRAUserOrgRole

## Synopsis

Set the user organization role.

## Syntax

```powershell
Set-vRAUserOrgRole [-userId] <String> [-orgId] <String> [-orgRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRAUserOrgRole` cmdlet sets a user's organization role in VMware Aria Automation.

## Examples

### Example 1

```powershell
Set-vRAUserOrgRole -userId $userId -orgId $orgId -orgRole org_owner
```

This example sets the user as an organization owner in VMware Aria Automation by userId and orgId.

### Example 2

```powershell
Set-vRAUserOrgRole -userId $userId -orgId $orgId -orgRole org_member
```

This example sets the user as an organization member in VMware Aria Automation by userId and orgId.

## Parameters

### -userId

The user id to be added.

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

The organization id to be added.

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

### -orgRole

The organization role to be added. Valid values are org_owner, org_member.

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
