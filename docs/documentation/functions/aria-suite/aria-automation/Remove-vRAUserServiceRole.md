# Remove-vRAUserServiceRole

## Synopsis

Remove the user service role.

## Syntax

```powershell
Remove-vRAUserServiceRole [-userId] <String> [-orgId] <String> [-serviceDefinitionId] <String> [-serviceRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRAUserServiceRole` cmdlet removes a user's service role in VMware Aria Automation.

## Examples

### Example 1

```powershell
Remove-vRAUserServiceRole -userId $userId -orgId $orgId -serviceDefinitionId $serviceDefinitionId -serviceRole $serviceRole
```

This example removes the user from a service role in VMware Aria Automation by userId and orgId.

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

### -serviceDefinitionId

The service definition id to be removed.

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

### -serviceRole

The service role to be removed. Valid values are automationservice:cloud_admin, automationservice:user, automationservice:viewer, catalog:admin, catalog:user, catalog:viewer, CodeStream:administrator, CodeStream:developer, CodeStream:executor, CodeStream:user, CodeStream:viewer, migration:admin, migration:viewer, orchestration:admin, orchestration:designer, orchestration:viewer, saltstack:admin.

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
