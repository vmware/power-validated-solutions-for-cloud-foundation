# Add-NsxtGlobalManagerClusterNode

## Synopsis

Add a NSX Global Manager instance to the cluster.

## Syntax

```powershell
Add-NsxtGlobalManagerClusterNode [-server] <String> [-user] <String> [-pass] <String> [[-primaryIp] <String>] [[-nodeFqdn] <String>] [[-nodeIp] <String>] [<CommonParameters>]
```

## Description

The Add-NsxtGlobalManagerClusterNode cmdlet adds an NSX Global Manager instance to the cluster.

- Validates that network connectivity and authentication is possible to primary NSX Global Manager instance
- Validates that network connectivity and authentication is possible to NSX Global Manager instance
- Adds the NSX Global Manager instance to the cluster

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerClusterNode -server sfo-m01-nsx-gm01a.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -primaryIp 10.11.10.82 -nodeFqdn sfo-m01-nsx-gm01b.sfo.rainpole.io -nodeIp 10.11.10.83
```

This example adds the NSX Global Manager instance to the NSX Global Manager cluster.

## Parameters

### -server

The fully qualified domain name of the primary NSX Global Manager.

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

The username to authenticate to the primary NSX Global Manager.

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

The password to authenticate to the primary NSX Global Manager.

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

### -primaryIp

The IP Address of the primary NSX Global Manager instance.

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

### -nodeFqdn

The fqdn of the NSX Global Manager instance to join to the cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -nodeIp

The IP Address of the NSX Global Manager instance to join to the cluster.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
