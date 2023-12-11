# Get-WSAActiveDirectoryGroupDetail

## Synopsis

Get details of the given Active Directory group

## Syntax

```powershell
Get-WSAActiveDirectoryGroupDetail [-group] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSAActiveDirectoryGroupDetail` cmdlet get details from Workspace ONE Access of the given Active Directory group.

## Examples

### Example 1

```powershell
Get-WSAActiveDirectoryGroupDetail -group "gg-wsa-admins"
```

## Parameters

### -group

The group name
This example gets the details for the Active Directory group 'gg-wsa-admins'.

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
