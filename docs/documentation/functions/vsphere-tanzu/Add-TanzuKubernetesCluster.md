# Add-TanzuKubernetesCluster

## Synopsis

Create a new Tanzu Kubernetes Cluster on a Supervisor Cluster

## Syntax

```powershell
Add-TanzuKubernetesCluster [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-cluster] <String> [[-yaml] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-TanzuKubernetesCluster` cmdlet creates a new Tanzu Kubernetes Cluster on a Supervisor Cluster.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Creates a Tanzu Kubernetes Cluster.

## Examples

### Example 1

```powershell
Add-TanzuKubernetesCluster -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -cluster sfo-w01-cl01 -yaml .\SampleYaml\sfo-w01-tkc01-cluster.yaml
```

This example creates a Tanzu Kubernetes cluster based on the YAML file .\SampleYaml\sfo-w01-tkc01-cluster.yaml as the vSphere SSO user <administrator@vsphere.local> on Supervisor Cluster sfo-w01-cl01.

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

### -domain

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

The Supervisor Cluster name.

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

### -yaml

The YAML file to use to create the Tanzu Kubernetes Cluster.

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
