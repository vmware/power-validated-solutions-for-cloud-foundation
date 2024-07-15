# Add-vRSLCMEnvironment

## Synopsis

Create an environment in VMware Aria Suite Lifecycle

## Syntax

```powershell
Add-vRSLCMEnvironment -json <String> [-environmentId <String>] [-addProduct] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRSLCMEnvironment` cmdlet to create an environment in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Add-vRSLCMEnvironment -json (Get-Content -Raw .\ariaLogs.json)
```

This example creates an environment in VMware Aria Suite Lifecycle

### Example 2

```powershell
Add-vRSLCMEnvironment -json (Get-Content -Raw .\ariaLogs.json) -vmid c907c25b-1c61-465b-b7cb-4100ac1ce331 -addProduct
```

This example adds a new product to an existing environment in VMware Aria Suite Lifecycle.

## Parameters

### -json

The json file to create the environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -environmentId

{{ Fill environmentId Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -addProduct

Switch to add a product to an existing environment.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
