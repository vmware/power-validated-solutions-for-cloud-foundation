# Undo-vRSLCMLoadBalancer

## Synopsis

Remove a load balancer from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Undo-vRSLCMLoadBalancer [-server] <String> [-user] <String> [-pass] <String> [-type] <String> [-loadBalancerFqdn] <String> [<CommonParameters>]
```

## Description

The `Undo-vRSLCMLoadBalancer` cmdlet removes a load balancer from the VMware Aria Suite Lifecycle.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values then:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Verifies that the load balancer is present in the VMware Aria Suite Lifecycle
- Removes the load balancer from VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
Undo-vRSLCMLoadBalancer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -type NSX_T -loadBalancerFqdn xint-vrops01.rainpole.io
```

This example removes the xint-vrops01.rainpole.io load balancer from VMware Aria Suite Lifecycle.

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

### -type

The type of load balancer.

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

### -loadBalancerFqdn

The FQDN of the load balancer.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
