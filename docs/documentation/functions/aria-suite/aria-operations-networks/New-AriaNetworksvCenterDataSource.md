# New-AriaNetworksvCenterDataSource

## Synopsis

Add a new vCenter Server data source to VMware Aria Operations for Networks.

## Syntax

```powershell
New-AriaNetworksvCenterDataSource [-fqdn] <String> [-username] <String> [-password] <String> [-nickname] <String> [-collectorId] <String> [-enabled] <String> [<CommonParameters>]
```

## Description

The `New-AriaNetworksvCenterDataSource` cmdlet allows a user to add in a vCenter Server as a new data source in VMware Aria Operations for Networks in order to collect network flow data.

## Examples

### Example 1

```powershell
New-AriaNetworksvCenterDataSource -fqdn sfo-m01-vc01.sfo.rainpole.io -username svc-inv-vsphere -password VMw@re1! -nickname "sfo-m01-vc01 - Management Domain vCenter Server" -CollectorId 15832:901:1711011916294613031 -enabled true
```

This example adds a vCenter Server as a new data source in VMware Aria Operations for Networks.

## Parameters

### -fqdn

The fully qualified domain name of the vCenter Server to add as a data source.

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

### -username

The username to use for authentication.

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

### -password

The password to use for authentication.

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

### -collectorId

The id of the VMware Aria Operations for Networks collector node where the vCenter Server data source will be connected.

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

### -enabled

The parameter to enable the data source.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
