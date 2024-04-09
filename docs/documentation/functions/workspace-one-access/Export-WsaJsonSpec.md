# Export-WsaJsonSpec

## Synopsis

Create Workspace ONE Access deployment JSON specification.

## Syntax

``` PowerShell
Export-WsaJsonSpec -jsonFile <String> -outputPath <String> [-standard] [-customVersion <String>] [-useContentLibrary] [<CommonParameters>]
```

## Description

The `Export-WsaJsonSpec` cmdlet creates the JSON specification file using the Global Workspace ONE Access JSON specification file to deploy Workspace ONE Access using VMware Aria Suite Lifecycle:

- Validates that the Global Workspace ONE Access JSON specification file is available
- Validates that network connectivity is available to VMware Aria Suite Lifecycle
- Makes a connection to the VMware Aria Suite Lifecycle instance and validates that authentication possible
- Generates the JSON specification file using the Global Workspace ONE Access JSON specification file and details from VMware Aria Suite Lifecycle

## Examples

### Example 1

``` PowerShell
Export-WsaJsonSpec -jsonFile .\wsaDeploySpec.json -outputPath .\myJsons\
```

This example creates a JSON deployment specification for a Clustered Cross-Instance Workspace ONE Access instance using the Global Workspace ONE Access JSON specification file.

### Example 2

``` PowerShell
Export-WsaJsonSpec -jsonFile .\wsaDeploySpec.json -outputPath .\myJsons\ -standard
```

This example creates a JSON deployment specification for a Standard Cross-Instance Workspace ONE Access instance using the Global Workspace ONE Access JSON specification file.

### Example 3

``` PowerShell
Export-WsaJsonSpec -jsonFile .\wsaDeploySpec.json -outputPath .\myJsons\ -customVersion 3.3.7
```

This example creates a JSON deployment specification for a Clustered Cross-Instance Workspace ONE Access instance using the Global Workspace ONE Access JSON specification file and a custom version.

### Example 4

``` PowerShell
Export-WsaJsonSpec -jsonFile .\wsaDeploySpec.json -outputPath .\myJsons\ -useContentLibrary
```

This example creates a JSON deployment specification for a Clustered Cross-Instance Workspace ONE Access instance using the Global Workspace ONE Access JSON specification file and deploying the OVA from a vSphere Content Library.

## Parameters

### -jsonFile

The JSON file for Cross-Instance Workspace ONE Access.

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

### -outputPath

The folder location where the Workspace ONE Access JSON file is created.

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

### -standard

{{ Fill standard Description }}

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

### -customVersion

The custom version of Workspace ONE Access to deploy.

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

### -useContentLibrary

Use a vSphere Content Library to deploy the Workspace ONE Access OVA.

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
