# Remove-vRAUserOrgRole

## Synopsis

Remove the user organization role.

## Syntax

```powershell
Remove-vRAUserOrgRole [-userId] <String> [-orgId] <String> [-orgRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAUserOrgRole` cmdlet a user's organization role in VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAUserOrgRole -userId $userId -orgId $orgId -orgRole org_owner
```

This example removes the user as an organization owner in VMware Aria Automation by userId and orgId.

### Example 2

```powershell
Remove-vRAUserOrgRole -userId $userId -orgId $orgId -orgRole org_member
```

This example removes the user as an organization member in VMware Aria Automation by userId and orgId.

## Parameters

### -userId

The user id to be removed.

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

The organization id to be removed.

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

The organization role to be removed. Valid values are org_owner, org_member.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
