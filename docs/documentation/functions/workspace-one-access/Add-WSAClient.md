# Add-WSAClient

## Synopsis

Add a client

## Syntax

```powershell
Add-WSAClient [[-clientId] <String>] [[-sharedSecret] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WSAClient` cmdlets add a client in Workspace ONE Access.

## Examples

### Example 1

```powershell
Add-WSAClient -json .\SampleJson\nsxClient.json
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

### -sharedSecret

The shared secret.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
