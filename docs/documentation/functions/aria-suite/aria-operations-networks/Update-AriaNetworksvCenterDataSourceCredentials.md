# Update-AriaNetworksvCenterDataSourceCredentials

## Synopsis

Update credentials for a vCenter Server data source credentials in VMware Aria
Operations for Networks.

## Syntax

```powershell
Update-AriaNetworksvCenterDataSourceCredentials [-id] <String> [-collectorId] <String> [[-fqdn] <String>] [-nickname] <String> [-username] <String> [-password] <String> [<CommonParameters>] [-nickname] <String> [-username] <String> [-password] <String> [<CommonParameters>]
```

## Description

The `Update-AriaNetworksvCenterDataSourceCredentials` cmdlet allows a user to
update credentials for a vCenter Server data source in VMware Aria Operations
for Networks.

## Examples

### Example 1

```powershell
Update-AriaNetworksvCenterDataSourceCredentials -id 15832:902:2623605245375371420 -CollectorId 15832:901:1711011916294613031 -fqdn sfo-m01-vc01.sfo.rainpole.io -username svc-inv-vsphere -password VMw@re1! -nickname "sfo-m01-vc01 - Management Domain vCenter Server"
```

This example updates a configured vCenter Server with updated credentials as
supplied in VMware Aria Operations for Networks.

### -id

The id of the vCenter Server to update.

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

### -collectorId

The id of the VMware Aria Operations for Networks collector node where the
vCenter Server data source is connected.

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

### -fqdn

The fully qualified domain name of the vCenter Server to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -username

The username to use for authentication.

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

### -password

The password to use for authentication.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`,
`-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`,
`-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and
`-WarningVariable`. For more information, see
[about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
