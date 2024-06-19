# Update-AriaNetworksNsxtDataSourceCredentials

## Synopsis

Update credentials for a NSX Manager data source in VMware Aria Operations for Networks.

## Syntax

### credentials (Default)

```powershell
Update-AriaNetworksNsxtDataSourceCredentials -fqdn <String> -id <String> -collectorId <String>
 -nickname <String> [-username <String>] [-password <String>] [<CommonParameters>]
```

### certificate

```powershell
Update-AriaNetworksNsxtDataSourceCredentials -fqdn <String> -id <String> -collectorId <String>
 -nickname <String> [-certificate <String>] [-privatekey <String>] [<CommonParameters>]
```

## Description

The `Update-AriaNetworksNsxtDataSourceCredentials` cmdlet allows a user to update credentials for a NSX Manager data source in VMware Aria Operations for Networks.

## Examples

### Example 1

```powershell
Update-AriaNetworksNsxtDataSourceCredentials -fqdn sfo-m01-nsx01.sfo.rainpole.io -id 15832:904:7312957441829059413 -CollectorId 15832:901:1711011916294613031 -nickname "sfo-m01-vc01 - Management Domain vCenter Server" -certificate F:\certs\sfo-m01-nsx01.cer -privatekey F:\certs\sfo-m01-nsx01.key
```

This example updates the credentials for the NSX Manager data source in VMware Aria Operations for Networks to use a new certificate and private key for a NSX principal identity user.

### Example 2

```powershell
Update-AriaNetworksNsxtDataSourceCredentials -fqdn sfo-m01-nsx01.sfo.rainpole.io -id 15832:904:7312957441829059413 -CollectorId 15832:901:1711011916294613031 -nickname "sfo-m01-vc01 - Management Domain vCenter Server" -username svc-inv-vsphere -password VMw@re1!VMw@re1!
```

This example updates the credentials for the NSX Manager data source in VMware Aria Operations for Networks to use a new NSX service account user with a password.

## Parameters

### -fqdn

The fully qualified domain name of the NSX Manager to update.

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

### -id

The id of the NSX Manager to update.

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

The id of the VMware Aria Operations for Networks collector node where the NSX-T Manager data source is connected.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`,
`-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`,
`-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and
`-WarningVariable`. For more information, see
[about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
