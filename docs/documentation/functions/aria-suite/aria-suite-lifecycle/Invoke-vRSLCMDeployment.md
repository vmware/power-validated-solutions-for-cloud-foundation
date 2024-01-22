# Invoke-vRSLCMDeployment

## Synopsis

End-to-end deployment of VMware Aria Suite Lifecycle.

## Syntax

```powershell
Invoke-vRSLCMDeployment [-jsonFile] <String> [-binaries] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-vRSLCMDeployment` cmdlet is a single function to deploy and configure VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Invoke-vRSLCMDeployment -jsonFile .\vrslcmDeploySpec.json -binaries .\binaries
```

This example deploys and configures VMware Aria Suite Lifecycle.

## Parameters

### -jsonFile

The path to the JSON specification file to be used.

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

### -binaries

The path to the product binaries.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
