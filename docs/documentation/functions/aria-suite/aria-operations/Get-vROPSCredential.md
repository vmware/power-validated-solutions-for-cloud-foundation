# Get-vROPSCredential

## Synopsis

Get credentials

## Syntax

```powershell
Get-vROPSCredential [[-credentialId] <String>] [-adapter] [-resource] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSCredential` cmdlet gets credentials from VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSCredential
```

This example gets all credentials from VMware Aria Operations.

## Parameters

### -credentialId

The ID of the credential to get.

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

### -adapter

The adapter to get credentials for.

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

### -resource

The resource to get credentials for.

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
