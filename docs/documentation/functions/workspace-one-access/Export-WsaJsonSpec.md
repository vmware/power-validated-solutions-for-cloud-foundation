# Export-WsaJsonSpec

## Synopsis

Create Workspace ONE Access JSON specification

## Syntax

```powershell
Export-WsaJsonSpec -server <String> -user <String> -pass <String> [-workbook <String>] [-standard]
 [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Export-WsaJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation Workbook
to deploy Workspace ONE Access using VMware Aria Suite Lifecycle:

- Validates that the Planning and Preparation is available
- Validates that network connectivity is available to VMware Aria Suite Lifecycle
- Makes a connection to the VMware Aria Suite Lifecycle instance and validates that authentication possible
- Generates the JSON specification file using the Planning and Preparation workbook and details from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Export-WsaJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example creates a JSON deployment specification of Clustered Workspace ONE Access using the Planning and Preparation Workbook

### Example 2

```powershell
Export-WsaJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -standard
```

This example creates a JSON deployment specification of Standard Workspace ONE Access using the Planning and Preparation Workbook

### Example 3

```powershell
Export-WsaJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customVersion 3.3.7
```

This example creates a JSON deployment specification of Clustered Workspace ONE Access using a custom version and the Planning and Preparation Workbook

### Example 4

```powershell
Export-WsaJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example creates a JSON deployment specification of Clustered Workspace ONE Access using the Planning and Preparation Workbook and deploying the OVA from a vSphere Content Library.

## Parameters

### -server

The fully qualified domain name of the VMware Aria Suite Lifecycle instance.

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

The username of the VMware Aria Suite Lifecycle instance.

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

The password of the VMware Aria Suite Lifecycle instance.

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

### -workbook

The path to the Planning and Preparation Workbook (.xlsx) file.

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

### -standard

Switch to deploy Workspace ONE Access in Standard (Single Node) mode.

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

The version of Workspace ONE Access to deploy.

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

Switch to deploy the Workspace ONE Access OVA from a vSphere Content Library.

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

The name of the vSphere Content Library to deploy the Workspace ONE Access OVA from.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
