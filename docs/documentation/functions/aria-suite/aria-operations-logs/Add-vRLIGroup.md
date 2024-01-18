# Add-vRLIGroup

## Synopsis

Add a group by authentication provider

## Syntax

```powershell
Add-vRLIGroup [-authProvider] <String> [-domain] <String> [-group] <String> [-role] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRLIGroup` cmdlet adds a group by authentication provider.

## Examples

### Example 1

```powershell
Add-vRLIGroup -authProvider vidm -domain sfo.rainpole.io -group gg-vrli-admins -role "Super Admin"
```

This example adds a group assigned using the the vIDM authenitcation provider and assigns the Super Admin role.

## Parameters

### -authProvider

The authentication provider to use. Valid values are vidm or ad.

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

### -domain

The domain of the group to add.

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

### -group

 The group to add.

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

### -role

The role to assign to the group. Valid values are Super Admin, User, Dashboard User, View Only Admin

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
