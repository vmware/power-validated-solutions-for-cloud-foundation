# New-vRAUser

## Synopsis

Adds a user in an organization.

## Syntax

```powershell
New-vRAUser [-userId] <String> [-orgId] <String> [-serviceDefinitionId] <String> [-orgRole] <String>
 [[-serviceRole] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRAUser` cmdlet adds a user in VMware Aria Automation.

## Examples

### Example 1

```powershell
New-vRAUser [-userId] <String> [-orgId] <String> [-serviceDefinitionId] <String> [-orgRole] <String> -serviceRole $serviceRole
```

This example adds a user to VMware Aria Automation by userId and orgId and assisgnes the required orgRole and serviceRole.

## Parameters

### -userId

The userId to add.

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

The organization Id to add the user to.

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

The service definition Id to add the user to.

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

### -orgRole

The organization role to assign to the user.

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

### -serviceRole

The service role to assign to the user.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
