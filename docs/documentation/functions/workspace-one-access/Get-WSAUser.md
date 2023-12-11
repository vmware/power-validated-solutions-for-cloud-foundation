# Get-WSAUser

## Synopsis

Get users

## Syntax

```powershell
Get-WSAUser [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSAUser` cmdlets retrieves the users in Workspace ONE Access.

## Examples

### Example 1

```powershell
Get-WSAUser
```

This example retrieves the users in Workspace ONE Access.

## Parameters

### -id

The User ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
