# Enable-SupervisorCluster

## Synopsis

Enables Workload Management on a VCF cluster

## Syntax

```powershell
Enable-SupervisorCluster [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-cluster] <String> [-sizeHint] <String> [-managementNetworkMode] <String>
 [-managementVirtualNetwork] <String> [-managementNetworkStartIpAddress] <String>
 [-managementNetworkAddressRangeSize] <Int32> [-managementNetworkGateway] <String>
 [-managementNetworkSubnetMask] <String> [-masterDnsName] <Array> [-masterNtpServers] <Array>
 [-masterDnsServers] <Array> [-contentLibrary] <String> [-ephemeralStoragePolicy] <String>
 [-imageStoragePolicy] <String> [-masterStoragePolicy] <String> [-nsxEdgeCluster] <String>
 [-distributedSwitch] <String> [-podCIDRs] <String> [-serviceCIDR] <String> [-externalIngressCIDRs] <String>
 [-externalEgressCIDRs] <String> [-masterDnsSearchDomain] <String> [-workerDnsServers] <Array>
 [[-ConfigurationTimeoutSeconds] <Object>] [-skipValidation] [-validateOnly]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Enable-SupervisorCluster` cmdlet enables Workload Management on a VCF cluster.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that network connectivity and authentication is possible to NSX Manager cluster
- Performs validation of in puts unless skipped using a switch
- Enables Workload Management on the vSphere cluster.

## Examples

### Example 1

```powershell
$wmClusterInput = @{
    server = "sfo-vcf01.sfo.rainpole.io"
    user = "administrator@vsphere.local"
    pass = 'VMw@re1!'
    domain = "sfo-w01"
    cluster = "sfo-w01-cl01"
    sizeHint = "Tiny"
    managementVirtualNetwork = "sfo-w01-kub-seg01"
    managementNetworkMode = "StaticRange"
    managementNetworkStartIpAddress = "192.168.20.10"
    managementNetworkAddressRangeSize = 5
    managementNetworkGateway = "192.168.20.1"
    managementNetworkSubnetMask = "255.255.255.0"
    masterDnsName = "sfo-w01-cl01.sfo.rainpole.io"
    masterDnsServers = @("172.16.11.4", "172.16.11.5")
    masterNtpServers = @("172.16.11.253", "172.16.12.253")
    contentLibrary = "Kubernetes"
    ephemeralStoragePolicy = "vsphere-with-tanzu-storage-policy"
    imageStoragePolicy = "vsphere-with-tanzu-storage-policy"
    masterStoragePolicy = "vsphere-with-tanzu-storage-policy"
    nsxEdgeCluster = "sfo-w01-ec01"
    distributedSwitch = "sfo-w01-cl01-vds01"
    podCIDRs = "100.100.0.0/20"
    serviceCIDR = "100.200.0.0/22"
    externalIngressCIDRs = "192.168.21.0/24"
    externalEgressCIDRs = "192.168.22.0/24"
    workerDnsServers = @("172.16.11.4", "172.16.11.5")
    masterDnsSearchDomain = "sfo.rainpole.io"
}
```

### Example 2

```powershell
Enable-SupervisorCluster @wmClusterInput 
```

This example enables Workload Management on a vSphere Cluster in workload domain sfo-w01

### Example 3

```powershell
Enable-SupervisorCluster -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -sizeHint Tiny -managementVirtualNetwork sfo-w01-kub-seg01 -managementNetworkMode StaticRange -managementNetworkStartIpAddress 192.168.20.10 -managementNetworkAddressRangeSize 5 -managementNetworkGateway 192.168.20.1 -managementNetworkSubnetMask 255.255.255.0 -cluster sfo-w01-cl01 -contentLibrary Kubernetes -ephemeralStoragePolicy vsphere-with-tanzu-storage-policy -imageStoragePolicy vsphere-with-tanzu-storage-policy -masterStoragePolicy vsphere-with-tanzu-storage-policy -nsxEdgeCluster sfo-w01-ec01 -distributedSwitch sfo-w01-sfo-w01-vc01-sfo-w01-cl01-vds01 -podCIDRs "100.100.0.0/20" -serviceCIDR "100.200.0.0/22" -externalIngressCIDRs "192.168.21.0/24" -externalEgressCIDRs "192.168.22.0/24" -masterNtpServers @("172.16.11.253", "172.16.12.253") -masterDnsServers @("172.16.11.4", "172.16.11.5") -masterDnsName sfo-w01-cl01.sfo.rainpole.io -masterDnsSearchDomain sfo.rainpole.io -workerDnsServers @("172.16.11.4", "172.16.11.5")
```

This example enables Workload Management on a vSphere Cluster in workload domain sfo-w01.

## Parameters

### -server

The IP or FQDN of the SDDC Manager.

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

The username used to connect to SDDC Manager.

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

The password used to connect to SDDC Manager.

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

The name of the workload domain.

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

The name of the vSphere cluster.

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

### -sizeHint

The size of the vSphere cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementNetworkMode

The management network mode.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementVirtualNetwork

The name of the management virtual network.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementNetworkStartIpAddress

The management network starting IP address.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementNetworkAddressRangeSize

The management network address range size.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementNetworkGateway

The management network gateway.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -managementNetworkSubnetMask

The management network subnet mask.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masterDnsName

The master DNS name.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masterNtpServers

The master NTP servers.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masterDnsServers

The master DNS servers.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -contentLibrary

The name of the content library.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ephemeralStoragePolicy

The name of the ephemeral storage policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -imageStoragePolicy

The name of the image storage policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masterStoragePolicy

The name of the master storage policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -nsxEdgeCluster

The name of the NSX Edge cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -distributedSwitch

The name of the distributed switch.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -podCIDRs

The pod CIDRs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceCIDR

The service CIDR.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -externalIngressCIDRs

The external ingress CIDRs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -externalEgressCIDRs

The external egress CIDRs.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -masterDnsSearchDomain

The master DNS search domain.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -workerDnsServers

The worker DNS servers.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConfigurationTimeoutSeconds

The timeout in seconds for the configuration to complete.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
Default value: 3600
Accept pipeline input: False
Accept wildcard characters: False
```

### -skipValidation

Skips the input parameter validation.

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

### -validateOnly

Validates the input parameters and exits.

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
