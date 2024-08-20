# Remove-NsxtGlobalManagerClusterVirtualIp

## Synopsis

Remove a NSX Global Manager cluster virtual IP.

## Syntax

```powershell
Remove-NsxtGlobalManagerClusterVirtualIp [[-protocol] <String>] [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerClusterVirtualIp` cmdlet removes a NSX Global Manager cluster virtual IP.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerClusterVirtualIp -protocol IPv4
```

This example removes the IPv4 NSX Global Manager cluster virtual IP.

### Example 2

```powerhell
Remove-NsxtGlobalManagerClusterVirtualIp -protocol IPv6
```

This example removes the IPv6 NSX Global Manager cluster virtual IP.

## Parameters

### -protocol

The protocol to remove the cluster virtual IP. (One of IPv4 or IPv6)

```yaml
Type: String
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
