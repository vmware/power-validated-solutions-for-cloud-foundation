# Set-vRAGroupServiceRole

## Synopsis

Set the group service role.

## Syntax

```powershell
Set-vRAGroupServiceRole [-groupId] <String> [-orgId] <String> [-serviceDefinitionId] <String>
 [-serviceRole] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRAGroupServiceRole` cmdlet adds a group's service role in VMware Aria Automation.

## Examples

### Example 1

```powershell
Set-vRAGroupServiceRole -groupId $groupId -orgId $orgId -serviceDefinitionId $serviceDefinitionId -serviceRole $serviceRole
```

This example adds the group to a service role in VMware Aria Automation by groupId and orgId.

## Parameters

### -groupId

The group id to be added.

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

### -serviceDefinitionId

The service definition id to be added.

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

The service role to be added.
Valid values are automationservice:cloud_admin, automationservice:user, automationservice:viewer, catalog:admin, catalog:user, catalog:viewer, CodeStream:administrator, CodeStream:developer, CodeStream:executor, CodeStream:user, CodeStream:viewer, migration:admin, migration:viewer, orchestration:admin, orchestration:designer, orchestration:viewer, saltstack:admin.

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
