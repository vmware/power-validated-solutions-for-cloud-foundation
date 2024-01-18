# New-vRSLCMAdapterOperation

## Synopsis

Add a VMware Aria Operations adapter via VMware Aria Suite Lifecycle

## Syntax

```powershell
New-vRSLCMAdapterOperation [-json] <String> [-environmentId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRSLCMAdapterOperation` cmdlet to create a VMware Aria Operations adapter in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
New-vRSLCMAdapterOperation -json .\addAdapter.json
```

This example creates an adapter in VMware Aria Operations via VMware Aria Suite Lifecycle.

## Parameters

### -json

The JSON file to use to create the adapter in VMware Aria Operations via VMware Aria Suite Lifecycle.

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

### -environmentId

The environment ID to use to create the adapter in VMware Aria Operations via VMware Aria Suite Lifecycle.

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
