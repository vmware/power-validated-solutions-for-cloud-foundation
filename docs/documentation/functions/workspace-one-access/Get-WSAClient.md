# Get-WSAClient

## Synopsis

Get clients

## Syntax

```powershell
Get-WSAClient [[-clientId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSAClient` cmdlets gets a list of clients in Workspace ONE Access.

## Examples

### Example 1

```powershell
Get-WSAClient
```

This example retrieves all clients in Workspace ONE Access.

## Parameters

### -clientId

The client ID.

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
