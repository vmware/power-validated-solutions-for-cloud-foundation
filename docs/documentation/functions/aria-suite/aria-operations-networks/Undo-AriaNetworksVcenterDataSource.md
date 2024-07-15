# Undo-AriaNetworksVcenterDataSource

## Synopsis

Removes a vCenter Server data source from VMware Aria Operations for Networks.

## Syntax

```powershell
Undo-AriaNetworksVcenterDataSource [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-environmentName] <String> [-ariaNetworksFqdn] <String> [-ariaNetworksUser] <String> [-ariaNetworksPass] <String> [<CommonParameters>]
```

## Description

The `Undo-AriaNetworksVcenterDataSource` cmdlet removes a vCenter Server data source from VMware Aria Operations for Networks.
The cmdlet connects to SDDC Manager using the -server, -user, and -pass values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the VMware Aria Suite Lifecycle instance
- Validates that network connectivity and authentication is possible to the VMware Aria Operations for Networks instance
- Gathers vCenter Server details from the SDDC Manager instance
- Removes a vCenter Server data source from a domain

## Examples

### Example 1

```powershell
Undo-AriaNetworksVcenterDataSource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -environmentName xint-env -ariaNetworksFqdn xint-net01a.rainpole.io -ariaNetworksUser admin@local -ariaNetworksPass VMw@re1!
```

This example removes a vCenter Server data source for a domain in the SDDC in the VMware Aria Operations for Networks instance.

## Parameters

### -server

The fully qualified domain name (FQDN) of the SDDC Manager to connect to.

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

The username to use for authentication to SDDC Manager.

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

The password to use for authentication to SDDC Manager.

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

### -sddcDomain

The name of the domain in SDDC Manager.

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

### -environmentName

The VMware Aria Suite Lifecycle environment name.

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

### -ariaNetworksFqdn

The fully qualified domain name (FQDN) of the VMware Aria Operations for Networks platform node.

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

### -ariaNetworksUser

The username to use to authenticate to VMware Aria Operations for Networks.

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

### -ariaNetworksPass

The password for the username to use to authenticate to VMware Aria Operations for Networks.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
