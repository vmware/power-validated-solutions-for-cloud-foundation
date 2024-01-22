# New-vRAGroup

## Synopsis

Adds a group in an organization.

## Syntax

```powershell
New-vRAGroup -groupId <String> -orgId <String> -orgRole <String> [-serviceDefinitionId <String>]
 [-serviceRole <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRAGroup` cmdlet adds a group in VMware Aria Automation.

## Examples

### Example 1

```powershell
New-vRAGroup -groupId $groupId -orgId $orgId -serviceDefinitionId $serviceDefinitionId -orgRole $orgRole-serviceRole $serviceRole
```

This example adds a group in VMware Aria Automation by groupId and orgId and assisgnes both the required orgRole and serviceRole.

### Example 2

```powershell
New-vRAGroup -groupId $orgId -orgId $orgId -serviceDefinitionId $serviceDefinitionId -orgRole $orgRole -serviceRole $serviceRole
```

This example adds a group in VMware Aria Automation by groupId and orgId and assisgnes the required orgRole only.

Note: This cmdlet currently only supports a single serviceRole.

## Parameters

### -groupId

The groupId to add.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -orgId

The organization Id to add the group to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -orgRole

The organization role to assign to the group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceDefinitionId

The service definition Id to add the group to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceRole

The service role to assign to the group.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
