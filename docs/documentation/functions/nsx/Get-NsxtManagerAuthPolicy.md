# Get-NsxtManagerAuthPolicy

## Synopsis

Get the Authentication Policy for NSX Manager Nodes

## Syntax

```powershell
Get-NsxtManagerAuthPolicy [-nsxtManagerNode] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtManagerAuthPolicy` cmdlet gets the current authentication policy for NSX Manager Node.

## Examples

### Example 1

```powershell
Get-NsxtManagerAuthPolicy -nsxtManagerNode "sfo-m01-nsx01a.sfo.rainpole.io"
```

This example returns the current Authentication policy in NSX manager node sfo-m01-nsx01a.sfo.rainpole.io.

## Parameters

### -nsxtManagerNode

The NSX Manager Node name.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
