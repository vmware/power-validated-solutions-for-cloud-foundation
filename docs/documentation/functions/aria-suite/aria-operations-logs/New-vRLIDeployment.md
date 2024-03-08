# New-vRLIDeployment

## Synopsis

Deploy VMware Aria Operations for Logs Cluster via VMware Aria Suite Lifecycle

## Syntax

```powershell
New-vRLIDeployment -server <String> -user <String> -pass <String> [-workbook <String>] [-monitor]
 [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRLIDeployment` cmdlet deploys VMware Aria Operations for Logs via VMware Aria Suite Lifecycle.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that the Planning and Preparation provided is available
- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the environment does not already exist in VMware Aria Suite Lifecycle
- Requests a new deployment of VMware Aria Operations for Logs via VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
New-vRLIDeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example starts a deployment of VMware Aria Operations for Logs via VMware Aria Suite Lifecycle using the Planning and Preparation Workbook data

### Example 2

```powershell
New-vRLIDeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customversion x.y.z
```

This example starts a deployment of a custom version of VMware Aria Operations for Logs via VMware Aria Suite Lifecycle using the Planning and Preparation Workbook data

### Example 3

```powershell
New-vRLIDeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example starts a deployment of VMware Aria Operations for Logs via VMware Aria Suite Lifecycle using a content library for the OVA deployment and the Planning and Preparation Workbook data.

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

### -monitor

Monitor the deployment of VMware Aria Operations for Logs via VMware Aria Suite Lifecycle.

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

The custom version of VMware Aria Operations for Logs to deploy.

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

Use a vSphere Content Library to deploy the VMware Aria Operations for Logs OVA.

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

The vSphere Content Library name to use to deploy the VMware Aria Operations for Logs OVA.

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
