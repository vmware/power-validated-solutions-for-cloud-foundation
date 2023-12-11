# Add-WSAConnector

## Synopsis

Add connector to identity providor

## Syntax

```powershell
Add-WSAConnector [-wsaNode] <String> [-domain] <String> [-bindUserPass] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-WSAConnector` cmdlets adds a connector to an identity provider in Workspace ONE Access.

## Examples

### Example 1

```powershell
Add-WSAConnector -wsaFqdn xint-wsa01b.rainpole.io -domain sfo.rainpole.io -bindUserPass VMw@re1!
```

This example adds a connector to an identity provider in Workspace ONE Access.

## Parameters

### -wsaNode

The Workspace ONE Access node FQDN.

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

The domain name.

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

### -bindUserPass

The bind user password.

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
