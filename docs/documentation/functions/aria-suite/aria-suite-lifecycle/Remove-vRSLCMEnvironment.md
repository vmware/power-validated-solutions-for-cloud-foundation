# Remove-vRSLCMEnvironment

## Synopsis

Remove an environment from VMware Aria Suite Lifecycle

## Syntax

```powershell
Remove-vRSLCMEnvironment [-environmentId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMEnvironment` cmdlet removes an environment from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Remove-vRSLCMEnvironment [-environmentId] <String> 
```

This example removes an environment from VMware Aria Suite Lifecycle.

## Parameters

### -environmentId

The vmid of the environment.

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
