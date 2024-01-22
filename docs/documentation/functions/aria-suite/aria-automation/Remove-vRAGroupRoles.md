# Remove-vRAGroupRoles

## Synopsis

Remove the group roles.

## Syntax

```powershell
Remove-vRAGroupRoles [-groupId] <String> [-orgId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAGroupRoles` cmdlet removes a group's roles in VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAGroupRoles -orgId <org_id>
```

This example removes a group's roles from VMware Aria Automation by groupId and orgId.

## Parameters

### -groupId

The groupId to remove the roles for.

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

The organization Id to remove the roles for.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
