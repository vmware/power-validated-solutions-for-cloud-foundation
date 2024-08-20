# Add-NsxtGlobalManagerVirtualIp

## Synopsis

Configure the virtual ip for the NSX Global Manager cluster.

## Syntax

```powershell
Add-NsxtGlobalManagerVirtualIp [-server] <String> [-user] <String> [-pass] <String> [[-virtualIp] <String>] [<CommonParameters>]
```

## Description

The `Add-NsxtGlobalManagerVirtualIp` cmdlet configures the virtual ip for the NSX Global Manager cluster.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Configures the virtual IP for the cluster

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerVirtualIp -server sfo-m01-nsx-gm01a.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -virtualIp 10.11.10.81
```

This example configures the virtual IP address of the NSX Global Manager cluster.

## Parameters

### -server

The fully qualified domain name of the NSX Global Manager.

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

The username to authenticate to the NSX Global Manager.

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

The password to authenticate to the NSX Global Manager.

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

### -virtualIp

The virtual IP to assign to the cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
