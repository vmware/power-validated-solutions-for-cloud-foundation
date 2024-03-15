# New-vRADeployment

## Synopsis

Deploy VMware Aria Automation to VMware Aria Suite Lifecycle

## Syntax

```powershell
New-vRADeployment -server <String> -user <String> -pass <String> [-jsonFile <String>] [-monitor] [-customVersion <String>] [-useContentLibrary] [-contentLibrary <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRADeployment` cmdlet deploys VMware Aria Automation via VMware Aria Suite Lifecycle.

The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Automation has not been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Requests a new deployment of VMware Aria Automation.

## Examples

### Example 1

```powershell
New-vRADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\pcaDeploySpec.json -outputPath .\
```

This example starts a deployment of VMware Aria Automation using the JSON Specification for VMware Aria Automation.

### Example 2

```powershell
New-vRADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\pcaDeploySpec.json -customversion x.y.z
```

This example starts a deployment of VMware Aria Automation using a custom version and the JSON Specification for VMware Aria Automation.

### Example 3

```powershell
New-vRADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\pcaDeploySpec.json -useContentLibrary -contentLibrary Operations
```

This example starts a deployment of VMware Aria Automation using the JSON Specification for VMware Aria Automation and deploys the OVAs from a vSphere Content Library.

### Example 4

```powershell
New-vRADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\pcaDeploySpec.json -monitor
```

This example starts a deployment of VMware Aria Automation using the JSON Specification for VMware Aria Automation and monitors the request.

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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -monitor

Switch to monitor the deployment request.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
