# Remove-vRAGroupOrgRole

## Synopsis

Remove the group organization role.

## Syntax

```powershell
Remove-vRAGroupOrgRole [-groupId] <String> [-orgId] <String> [-orgRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAGroupOrgRole` cmdlet a removes a group's organization role in VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAGroupOrgRole -groupId $groupId -orgId $orgId -orgRole org_owner
```

This example removes the group as an organization owner in VMware Aria Automation by groupId and orgId.

### Example 2

```powershell
Remove-vRAGroupOrgRole -groupId $groupId -orgId $orgId -orgRole org_member
```

This example removes the group as an organization member in VMware Aria Automation by groupId and orgId.

## Parameters

## -groupId

The groupId to remove the organization role for.

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

The organization Id to remove the organization role for.

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

The organization role to remove.

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
