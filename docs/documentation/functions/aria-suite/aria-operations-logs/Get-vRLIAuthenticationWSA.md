# Get-vRLIAuthenticationWSA

## Synopsis

Get configuration of Workspace ONE Access

## Syntax

```powershell
Get-vRLIAuthenticationWSA [-status] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The Get-vRLIAuthenticationWSA cmdlet gets the configuration for Workspace ONE Access Integration.

## Examples

### Example 1

```powershell
Get-vRLIAuthenticationWSA
```

This example gets the configuration for the Workspace ONE Access Integration

### Example 2

```powershell
Get-vRLIAuthenticationWSA -status
```

This example gets the connection status for the Workspace ONE Access Integration.

## Parameters

### -status

The status of the Workspace ONE Access Integration.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
