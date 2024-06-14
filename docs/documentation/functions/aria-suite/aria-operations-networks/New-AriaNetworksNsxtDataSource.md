# New-AriaNetworksNsxtDataSource

## Synopsis

Add a new NSX-T data source to VMware Aria Operations for Networks.

## Syntax

### credentials (Default)

```powershell
New-AriaNetworksNsxtDataSource -fqdn <String> [-username <String>] [-password <String>] -nickname <String>
 -collectorId <String> -enabled <String> [<CommonParameters>]
```

### certificate

```powershell
New-AriaNetworksNsxtDataSource -fqdn <String> [-certificate <String>] [-privatekey <String>] -nickname <String>
 -collectorId <String> -enabled <String> [<CommonParameters>]
```

## Description

The `New-AriaNetworksNsxtDataSource` cmdlet allows a user to add an NSX Manager as a new data source in VMware Aria Operations for Networks in order to collect network flow data.

## Examples

### Example 1

```powershell
New-AriaNetworksNsxtDataSource -fqdn sfo-m01-nsx01.sfo.rainpole.io -certificate F:\certs\sfo-m01-nsx01.cer -privatekey F:\certs\sfo-m01-nsx01.key -nickname "sfo-m01-nsx01 - Management Domain NSX Manager" -CollectorId 15832:901:1711011916294613031 -enabled true
```

This example adds a NSX Manager as a new data source in VMware Aria Operations for Networks by using a NSX principal identity user.

### Example 2

```powershell
New-AriaNetworksNsxtDataSource -fqdn sfo-m01-nsx01.sfo.rainpole.io -username svc-inv-vsphere -password VMw@re1!VMw@re1! -nickname "sfo-m01-nsx01 - Management Domain NSX Manager" -CollectorId 15832:901:1711011916294613031 -enabled true
```

This example adds a NSX Manager as a new data source in VMware Aria Operations for Networks by using a NSX service account user with a password.

## Parameters

### -fqdn

The fully qualified domain name of the NSX Manager to add as a data source.

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

### -certificate

The principal identity certificate to use for authentication.

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

The principal identity private key to use for authentication.

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

### -username

The username to use for authentication.

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

### -password

The password to use for authentication.

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

### -nickname

The nickname to use for this data source in VMware Aria Operations for Networks.

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

### -collectorId

The id of the VMware Aria Operations for Networks collector node where the NSX Manager data source will be connected.

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

### -enabled

The parameter to enable the data source.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
