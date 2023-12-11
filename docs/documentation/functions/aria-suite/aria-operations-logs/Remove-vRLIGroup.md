# Remove-vRLIGroup

## Synopsis

Remove a group by authentication provider

## Syntax

```powershell
Remove-vRLIGroup [-authProvider] <String> [-domain] <String> [-group] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRLIGroup` cmdlet removes a group by authentication provider.

## Examples

### Example 1

```powershell
Remove-vRLIGroup -authProvider vidm -domain sfo.rainpole.io -group gg-vrli-admins
```

This example removes a group assigned using the the vIDM authenitcation provider.

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

The domain of the group to remove.

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

The group to remove.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
