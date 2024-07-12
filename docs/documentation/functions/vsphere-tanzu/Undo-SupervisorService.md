# Undo-SupervisorService

## Synopsis

Remove a Supervisor Service from a Kubernetes Cluster.

## SYNTAX

```powershell
Undo-SupervisorService [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-cluster] <String> [[-registerYaml] <String>] [<CommonParameters>]
```

## Description

The `Undo-SupervisorService` cmdlets removes a Supervisor Service from a Kubernetes Cluster.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Removes a Supervisor Service from a Kubernetes Cluster

## Examples

### Example 1

```powershell
Undo-SupervisorService -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -cluster sfo-w01-cl01 -registerYaml F:\VMware.PlatformTools\binaries\contour.yml
```

This example removes the contour Supervisor Service.

### Example 2

```powershell
Undo-SupervisorService -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-w01 -cluster sfo-w01-cl01 -registerYaml F:\VMware.PlatformTools\binaries\harbor.yml
```

This example removes the harbor Supervisor Service.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
