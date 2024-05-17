# Invoke-InvDeployment

## Synopsis

End-to-end Deployment of Intelligent Network Visibility.

## Syntax

```powershell
Invoke-InvDeployment -jsonFile <String> -certificates <String> -binaries <String> [-useContentLibrary] [-nested] [<CommonParameters>]
```

## Description

The `Invoke-InvDeployment` cmdlet is a single function to implement the configuration of the Intelligent Network Visibility for VMware Cloud Foundation validated solution.

## Exampels

### Example 1

```powershell
Invoke-InvDeployment -jsonFile .\invDeploySpec.json -certificates ".\certificates\" -binaries ".\binaries\"
```

This example configures Intelligent Network Visibility for VMware Cloud Foundation using the JSON spec supplied.

## Parameters

### -jsonFile

The fully qualified path to the JSON specification file (.json).

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

### -certificates

The fully qualified path to the certificates directory.

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

### -binaries

The fully qualified path to the binaries directory.

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

### -useContentLibrary

Use a vSphere Content Library to store the binaries.

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

### -nested

Deploy Intelligent Network Visibility for VMware Cloud Foundation in a nested configuration.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
