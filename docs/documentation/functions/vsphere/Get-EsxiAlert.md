# Get-EsxiAlert

## Synopsis

Returns the triggered alarms for an ESXi host.

## Syntax

```powershell
Get-EsxiAlert [-host] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-EsxiAlert` cmdlet returns all triggered alarms for ESXi host.

## Examples

### Example 1

```powershell
Get-EsxiAlert -host sfo-w01-esx01.sfo.rainpole.io
```

This example returns all triggered alarms for and ESXi host named sfo-w01-esx01.sfo.rainpole.io.

## Parameters

### -host

The ESXi host name.

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
