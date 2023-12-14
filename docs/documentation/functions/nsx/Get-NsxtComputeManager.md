# Get-NsxtComputeManager

## Synopsis

Retrieves a list of compute managers from NSX Manager

## Syntax

```powershell
Get-NsxtComputeManager [[-vCenterServer] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtComputeManager` cmdlet gets compute managers from NSX Manager.

## Examples

### Example 1

```powershell
Get-NsxtComputeManager
```

This example gets all compute managers

### Example 2

```powershell
Get-NsxtComputeManager -vCenterServer "sfo-m01-vc01.sfo.rainpole.io"
```

This example gets the compute manager named "sfo-m01-vc01.sfo.rainpole.io".

## Parameters

### -vCenterServer

The vCenter Server FQDN.

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
