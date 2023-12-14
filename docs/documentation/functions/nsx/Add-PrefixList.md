# Add-PrefixList

## Synopsis

The `Add-PrefixList` cmdlet creates NSX Prefix List in the NSX Manager cluster.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to NSX Manager
- Create an NSX Prefix List if not already created in NSX Manager

## Syntax

```powershell
Add-PrefixList [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-tier0Gateway] <String>
 [-prefixListName] <String> [-subnetCidr] <String> [-ingressSubnetCidr] <String> [-egressSubnetCidr] <String>
 [[-GE] <String>] [[-LE] <String>] [-action] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-PrefixList` cmdlet creates an NSX Prefix List.

## Examples

### Example 1

```powershell
Add-PrefixList -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -tier0Gateway sfo-w01-ec01-t0-gw01 -prefixListName sfo-w01-ec01-t0-gw01-mgmt-prefixlist -subnetCIDR 192.168.20.0/24 -ingressSubnetCidr "192.168.21.0/24" -egressSubnetCidr "192.168.22.0/24" -GE "28" -LE "32" -action PERMIT
```

This example creates an NSX Prefix List in the workload domain NSX Manager cluster.

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

The username used to authenticate to SDDC Manager.

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

### -domain

The name of the workload domain to run against.

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

### -tier0Gateway

The NSX Tier0 Gateway name.

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

### -prefixListName

The NSX Prefix List name.

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

### -subnetCidr

The NSX Prefix List subnet CIDR.

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

### -ingressSubnetCidr

The NSX Prefix List ingress subnet CIDR.

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

### -egressSubnetCidr

The NSX Prefix List egress subnet CIDR.

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

### -GE

The NSX Prefix List greater than or equal to value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LE

The NSX Prefix List less than or equal to value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -action

The NSX Prefix List action.

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
