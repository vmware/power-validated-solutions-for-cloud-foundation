# Remove-vRSLCMLoadbalancer

## Synopsis

Delete a load balancer from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Remove-vRSLCMLoadbalancer [-type] <String> [-loadBalancerFqdn] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vRSLCMLoadbalancer` cmdlet removes a load balancer from VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
Remove-vRSLCMLoadbalancer -type NSX_T -loadBalancerFqdn xint-wsa01.rainpole.io
```

This example deletes the load balancer from VMware Aria Suite Lifecycle.

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

### -loadBalancerFqdn

The fully qualified domain name of the load balancer.

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
