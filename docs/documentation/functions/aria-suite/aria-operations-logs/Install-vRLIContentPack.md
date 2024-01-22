# Install-vRLIContentPack

## Synopsis

Installs a Content Pack to VMware Aria Operations for Logs.

## Syntax

```powershell
Install-vRLIContentPack [-json] <String> [-update] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Install-vRLIContentPack` cmdlet installed a content pack to VMware Aria Operations for Logs.

## Examples

### Example 1

```powershell
Install-vRLIContentPack -json $json
```

This example installs a content pack to VMware Aria Operations for Logs from a JSON payload.

### Example 2

```powershell
Install-vRLIContentPack -update -json $json
```

This example updates a content pack in VMware Aria Operations for Logs from a JSON payload.

## Parameters

### -json

The JSON payload for the content pack.

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

### -update

Overwrite an existing content pack.

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
