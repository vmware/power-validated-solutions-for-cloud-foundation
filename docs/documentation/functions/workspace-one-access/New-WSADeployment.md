# New-WSADeployment

## Synopsis

Deploy Workspace ONE Access to VMware Aria Suite Lifecycle.

## Syntax

```powershell
New-WSADeployment -server <String> -user <String> -pass <String> [-workbook <String>] [-monitor] [-standard] [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-WSADeployment` cmdlet deploys Workspace ONE Access via VMware Aria Suite Lifecycle.

The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity is available to the SDDC Manager instance
- Makes a connection to the SDDC Manager instance and validates that authentication possible
- Validates that Workspace ONE Access has not been deployed in VMware Cloud Foundation aware mode
- Requests a new deployment of a Workspace ONE Access

## Examples

### Example 1

```powershell
New-WSADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx
```

This example starts a deployment of a clustered Workspace ONE Access using the Planning and Preparation Workbook.

### Example 2

```powershell
New-WSADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -standard
```

This example starts a deployment of a standard Workspace ONE Access using the Planning and Preparation Workbook.

### Example 3

```powershell
New-WSADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -customVersion 3.3.7
```

This example starts a deployment of Workspace ONE Access using a custom version and the Planning and Preparation Workbook.

### Example 4

```powershell
New-WSADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -workbook .\pnp-workbook.xlsx -useContentLibrary -contentLibrary Operations
```

This example starts a deployment of a Clustered Workspace ONE Access using the Planning and Preparation Workbook and deploying the OVA from a vSphere Content Library.

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

### -monitor

Switch to monitor the deployment of Workspace ONE Access.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
