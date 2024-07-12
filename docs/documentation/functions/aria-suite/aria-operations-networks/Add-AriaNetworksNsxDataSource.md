# Add-AriaNetworksNsxDataSource

## Synopsis

Adds a new NSX Manager data source to VMware Aria Operations for Networks.

## Syntax

### credentials (Default)

```powershell
Add-AriaNetworksNsxDataSource -server <String> -user <String> -pass <String> -sddcDomain <String>
 [-serviceAccount <String>] [-serviceAccountPass <String>] -environmentName <String> -ariaNetworksFqdn <String>
 -ariaNetworksUser <String> -ariaNetworksPass <String> [<CommonParameters>]
```

### certificate

```powershell
Add-AriaNetworksNsxDataSource -server <String> -user <String> -pass <String> -sddcDomain <String>
 [-certificate <String>] [-privatekey <String>] -environmentName <String> -ariaNetworksFqdn <String>
 -ariaNetworksUser <String> -ariaNetworksPass <String> [<CommonParameters>]
```

## Description

The `Add-AriaNetworksNsxDataSource` cmdlet adds a new NSX Manager data source to VMware Aria Operations
for Networks.
The cmdlet connects to SDDC Manager using the -server, -user, and -pass values
and uses the -sddcDomain, -serviceAccount, -serviceAccountPass, -environmentName, -ariaNetworksFqdn, -ariaNetworksUser,
and -ariaNetworksPass as well to do the following:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the VMware Aria Suite Lifecyle instance
- Validates that network connectivity and authentication is possible to the VMware Aria Operations for Networks instance
- Gathers NSX Manager details from SDDC Manager instance
- Adds a new NSX Manager data source for a domain

## Examples

### Example 1

```powershell
Add-AriaNetworksNsxDataSource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -serviceAccount svc-inv-nsx -serviceAccountPass VMw@re123!VMw@re123! -environmentName xint-env -ariaNetworksFqdn xint-net01a.rainpole.io -ariaNetworksUser admin@local -ariaNetworksPass VMw@re1!
```

This example creates a NSX Manager data source for a domain in the SDDC in the VMware Aria Operations for Networks instance using a service account username and password.

### Example 2

```powershell
Add-AriaNetworksNsxDataSource -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -certificate F:\certs\sfo-m01-nsx01.cer -privatekey F:\certs\sfo-m01-nsx01.key -environmentName xint-env -ariaNetworksFqdn xint-net01a.rainpole.io -ariaNetworksUser admin@local -ariaNetworksPass VMw@re1!
```

This example creates a NSX Manager data source for a domain in the SDDC in the VMware Aria Operations for Networks instance using a principal identity certificate and private key.

## Parameters

### -server

The fully qualified domain name (FQDN) of the SDDC Manager to connect to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
Position: Named
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceAccount

The name of the service account to use for authentication for the data source.

```yaml
Type: String
Parameter Sets: credentials
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -serviceAccountPass

The password for the service account to use for authentication for the data source.

```yaml
Type: String
Parameter Sets: credentials
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -certificate

The principal identity certificate to use for authentication for the data source.

```yaml
Type: String
Parameter Sets: certificate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -privatekey

The principal identity private key to use for authentication for the data source.

```yaml
Type: String
Parameter Sets: certificate
Aliases:

Required: False
Position: Named
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
Position: Named
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
Position: Named
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
