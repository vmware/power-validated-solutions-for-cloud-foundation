# Export-vRAJsonSpec

## Synopsis

Create VMware Aria Automation Deployment JSON specification

## Syntax

```powershell
Export-vRAJsonSpec -server <String> -user <String> -pass <String> [-workbook <String>]
 [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Export-vRAJsonSpec` cmdlet creates the JSON specification file using the Planning and Preparation workbook
to deploy VMware Aria Automation using VMware Aria Suite Lifecycle:

- Validates that the Planning and Preparation is available
- Validates that network connectivity is available to VMware Aria Suite Lifecycle
- Makes a connection to the VMware Aria Suite Lifecycle instance and validates that authentication possible
- Generates the JSON specification file using the Planning and Preparation workbook and details from VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Export-vRAJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example creates a JSON deployment specification of VMware Aria Automation using the Planning and Preparation Workbook

### Example 2

```powershell
Export-vRAJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customVersion 8.10.0
```

This example creates a JSON deployment specification of VMware Aria Automation using a custom version and the Planning and Preparation Workbook

### Example 3

```powershell
Export-vRAJsonSpec -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example creates a JSON deployment specification of VMware Aria Automation using the Planning and Preparation Workbook and deploys using the OVA using a vSphere Content Library.

## Parameters

### -server

The SDDC Manager FQDN or IP Address.

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

The SDDC Manager password.

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

The Planning and Preparation Workbook (.xlsx) file.

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

### -customVersion

The custom version of VMware Aria Automation.

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

Specifies to use a vSphere Content Library to deploy the VMware Aria Automation OVA.

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

The name of the vSphere Content Library to use to deploy the VMware Aria Automation OVA.

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
