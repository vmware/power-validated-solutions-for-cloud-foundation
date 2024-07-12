# Add-SupervisorService

## Synopsis

Add a Supervisor Service to Kubernetes Cluster.

## Syntax

```powershell
Add-SupervisorService [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-cluster] <String> [[-registerYaml] <String>] [[-configureYaml] <String>] [<CommonParameters>]
```

## Description

The `Add-SupervisorService` cmdlets adds Supervisor Service to a Kubernetes Cluster.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Adds a Supervisor Service to a Kubernetes Cluster

## Examples

### Example 1

```powershell
Add-SupervisorService -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -cluster sfo-w01-cl01 -registerYaml .\contour.yml -configureYaml .\contour-data-values.yml
```

This example adds the contour Supervisor Service.

### Example 2

```powershell
Add-SupervisorService -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -cluster sfo-w01-cl01 -registerYaml .\harbor.yml -configureYaml .\harbor-data-values.yml
```

This example adds the harbour Supervisor Service.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username to authenticate to the SDDC Manager.

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

### -pass

The password to authenticate to the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -sddcDomain

The name of the workload domain to run against.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -cluster

The supervisor cluster name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -registerYaml

The path to the yaml file used for registration.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -configureYaml

The path to the yaml file used for configuration.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
