# New-WSADeployment

## Synopsis

Deploy Workspace ONE Access to VMware Aria Suite Lifecycle.

## Syntax

``` PowerShell
New-WSADeployment -jsonFile <String> [-monitor] [-standard] [-customVersion <String>] [-useContentLibrary] [<CommonParameters>]
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

``` PowerShell
New-WSADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -jsonFile .\wsaDeploySpec.json
```

This example starts a deployment of a clustered Cross-Instance Workspace ONE Access using data from the JSON Specification file

### Example 2

``` PowerShell
New-WSADeployment -jsonFile .\wsaDeploySpec.json -standard
```

This example starts a deployment of a standard Cross-Instance Workspace ONE Access using data from the JSON Specification file

### Example 3

``` PowerShell
New-WSADeployment -jsonFile .\wsaDeploySpec.json -customVersion 3.3.7
```

This example starts a deployment of Workspace ONE Access using a custom version using data from the JSON Specification file

### Example 4

``` PowerShell
New-WSADeployment -jsonFile .\wsaDeploySpec.json -useContentLibrary
```

This example starts a deployment of a Clustered Workspace ONE Access using data from the JSON Specification file and deploying the OVA from a vSphere Content Library.

## Parameters

### -jsonFile

The JSON (.json) file for Workspace One Access.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
