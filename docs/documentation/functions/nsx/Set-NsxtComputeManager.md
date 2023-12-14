# Set-NsxtComputeManager

## Synopsis

Configure a set of parameters on a compute manager

## Syntax

```powershell
Set-NsxtComputeManager [-EnableTrust] <Boolean> [-inputObject] <PSObject> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Set-NsxtComputeManager` cmdlet configures a set of parameters on a compute manager.

## Examples

### Example 1

```powershell
Get-NsxtComputeManager -vCenterServer sfo-w01-vc01.sfo.rainpole.io | Set-NsxtComputeManager -EnableTrust:$true
```

This example enables trust (sets OIDC provider to true) for Compute Manager sfo-w01-vc01.sfo.rainpole.io
In this release, it is required to use pipeline input from Get-NsxtComputeManager.

## Parameters

### -EnableTrust

Enable trust (sets OIDC provider to true) for Compute Manager.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -inputObject

The input object from Get-NsxtComputeManager.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
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
