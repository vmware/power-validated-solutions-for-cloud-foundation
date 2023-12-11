# Remove-GlobalPermission

## Synopsis

Remove a vSphere Global Permission

## Syntax

```powershell
Remove-GlobalPermission [-principal] <String> [-type] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Remove-GlobalPermission` cmdlet removes a user or group from a vSphere Global Permission.

## Examples

### Example 1

```powershell
Remove-GlobalPermission -principal gg-vc-admins -type group
```

This example shows how to remove the Administrator global permission from the group called svc-vc-admins.

## Parameters

### -principal

The user or group name.

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

### -type

The user or group type.

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
