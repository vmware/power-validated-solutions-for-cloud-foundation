# Copy-vRealizeLoadBalancer

## Synopsis

Creates a Load Balancer for VMware Aria component failover

## Syntax

```powershell
Copy-vRealizeLoadBalancer [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String>
 [-sddcManagerAPassword] <String> [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String>
 [-sddcManagerBPassword] <String> [-serviceInterfaceIp] <String> [-wsaCertName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Copy-vRealizeLoadBalancer` cmdlet Creates a new loadbalancer in a secondary VMware Cloud Foundation instance by duplicating the settings of the
existing load balancer in the instance where the VMware Aria components are currently running.

## Examples

### Example 1

```powershell
Copy-vRealizeLoadBalancer -sddcManagerAFQDN sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPassword VMw@re1! -sddcManagerBFQDN lax-vcf01.lax.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPassword VMw@re1! -serviceInterfaceIP 192.168.11.3 -wsaCertName xint-wsa01
```

This example copies settings from Load Balancer in the Primary SDDC to a new Load Balancer in Recovery SDDC.

## Parameters

### -sddcManagerAFqdn

The fully qualified domain name of the SDDC Manager instance where the VMware Aria components are currently running.

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

### -sddcManagerAUser

The username of the SDDC Manager instance where the VMware Aria components are currently running.

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

### -sddcManagerAPassword

The password of the SDDC Manager instance where the VMware Aria components are currently running.

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

### -sddcManagerBFqdn

The fully qualified domain name of the SDDC Manager instance where the VMware Aria components will be running after failover.

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

### -sddcManagerBUser

The username of the SDDC Manager instance where the VMware Aria components will be running after failover.

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

### -sddcManagerBPassword

The password of the SDDC Manager instance where the VMware Aria components will be running after failover.

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

### -serviceInterfaceIp

The IP address of the Service Interface on the new Load Balancer.

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

### -wsaCertName

The name of the certificate to be used by the new Load Balancer.

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
