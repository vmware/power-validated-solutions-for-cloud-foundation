# Set-NsxtGlobalManagerClusterVirtualIp

## Synopsis

Configures a NSX Global Manager cluster virtual IP.

## Syntax

```powershell
Set-NsxtGlobalManagerClusterVirtualIp [[-virtualIp] <IPAddress>] [<CommonParameters>]
```

## Description

The `Set-NsxtGlobalManagerClusterVirtualIp` cmdlet configures an NSX Global Manager cluster virtual IP.

## Examples

### Example 1

```powershell
Set-NsxtGlobalManagerClusterVirtualIp -virtualIp 172.20.11.81
```

This example configures the IPv4 NSX Global Manager cluster virtual IP.

## Parameters

### -virtualIp

The IP address of the cluster virtual IP.

```yaml
Type: IPAddress
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
