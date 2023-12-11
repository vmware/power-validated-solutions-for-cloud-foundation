# Get-SubscribedLibrary

## Synopsis

Retrieves the specified Subscribed Content Library

## Syntax

```powershell
Get-SubscribedLibrary [-name] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-SubscribedLibrary` cmdlet retrieves the specified Subscribed Content Library.

## Examples

### Example 1

```powershell
Get-SubscribedLibrary -name Kubernetes
```

This example retrieves the Subscribed Content Library named Kubernetes.

## Parameters

### -name

The name of the Subscribed Content Library.

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
