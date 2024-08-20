# New-NsxtIpPool

## Synopsis

Create an IP pool.

## Syntax

```powershell
New-NsxtIpPool [-poolName] <String> [[-description] <String>] [<CommonParameters>]
```

## Description

The `New-NsxtIpPool` cmdlet creates an IP pool in NSX Manager.

## Examples

### Example 1

```powershell
New-NsxtIpPool -poolName sfo-m01-r01-ip-pool-rtep -description "RTEP IP Pool"
```

This example creates an IP pool in NSX Manager.

## Parameters

### -poolName

The name of the IP Pool.

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

### -description

The description of the IP Pool.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
