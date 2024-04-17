# Export-AriaNetworksJsonSpec

## Synopsis

Create VMware Aria Operations for Networks Deployment JSON specification.

## Syntax

```powershell
Export-AriaNetworksJsonSpec -server <String> -user <String> -pass <String> -jsonFile <String>
-outputPath <String> [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>]
[-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Export-AriaNetworksJsonSpec` cmdlet creates the JSON specification file using the Intelligent
Network Visibility JSON specification file generated from the Planning and Preparation Workbook to
deploy VMware Aria Operations for Networks using VMware Aria Suite Lifecycle:

- Validates that network connectivity is available to VMware Aria Suite Lifecycle.
- Makes a connection to the VMware Aria Suite Lifecycle instance and validates that authentication
  possible.
- Generates the JSON specification file using the Planning and Preparation workbook and details from
  VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Export-AriaNetworksJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\invDeploySpec.json
```

This example creates a JSON deployment specification in the current folder for VMware Aria Operations for Networks using the Intelligent Network Visibility JSON specification.

### Example 2

```powershell
Export-AriaNetworksJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\pcaDeploySpec.json -outputPath .\myJsons
```

This example creates a JSON deployment specification in the folder defined for VMware Aria Operations for Networks using the Intelligent Network Visibility JSON specification.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username to authenticate to the SDDC Manager.

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

### -pass

The password to authenticate to the SDDC Manager.

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

### -jsonFile

The path to the JSON specification file to be used.

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

The folder path to store the JSON specification file.

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

### -customVersion

The custom version of VMware Aria Operations for Networks.

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

Specifies to use a vSphere Content Library to deploy the VMware Aria Operations for Networks OVA.

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

### -contentLibrary

The name of the vSphere Content Library to use to deploy the VMware Aria Operations for Networks OVA.

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
