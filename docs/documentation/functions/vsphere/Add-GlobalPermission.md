# Add-GlobalPermission

## Synopsis

Add a vSphere Global Permission

## Syntax

```powershell
Add-GlobalPermission [-principal] <String> [-roleId] <String> [-propagate] <String> [-type] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-GlobalPermission` cmdlet adds a new user or group a vSphere Global Permission.

## Examples

### Example 1

```powershell
Add-GlobalPermission -principal gg-vc-admins -roleId -1 -propagate true -type group
```

This example shows how to add the Administrator global permission to a group called svc-vc-admins.

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

### -roleId

The vSphere Role Id.

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

### -propagate

The propagate flag.

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

### -type

The user or group type.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
