# Get-vRAGroup

## Synopsis

Get the group in an organization.

## Syntax

```powershell
Get-vRAGroup [-orgId] <String> [-displayName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAGroup` cmdlet returns the group information from an organization in VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAGroup -orgId $orgId -displayName gg-vra-cloud-assemhly-admins@rainpole.io
```

This example returns the group information from VMware Aria Automation by orgId and displayName.

## Parameters

### -orgId

The organization Id to get the group for.

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

### -displayName

The displayName of the group to get.

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
