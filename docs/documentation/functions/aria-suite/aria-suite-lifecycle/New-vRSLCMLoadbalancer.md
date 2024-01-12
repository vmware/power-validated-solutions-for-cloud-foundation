# New-vRSLCMLoadbalancer

## Synopsis

Add a load balancer to VMware Aria Suite Lifecycle.

## Syntax

```powershell
New-vRSLCMLoadbalancer [-type] <String> [-loadBalancerIp] <String> [-loadBalancerFqdn] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRSLCMLoadbalancer` cmdlet adds a new loadbalancers to VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
New-vRSLCMLoadbalancer -type NSX_T -loadBalancerIp 192.168.11.60 -loadBalancerFqdn xint-wsa01.rainpole.io
```

This example adds load balancers in VMware Aria Suite Lifecycle with a type of NSX_T.

## Parameters

### -type

The type of load balancer.

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

### -loadBalancerIp

The IP address of the load balancer.

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

### -loadBalancerFqdn

The fully qualified domain name of the load balancer.

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
