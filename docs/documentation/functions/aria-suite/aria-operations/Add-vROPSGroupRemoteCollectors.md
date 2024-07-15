# Add-vROPSGroupRemoteCollectors

## Synopsis

Creates a Collector group and assigns nodes in VMware Aria Operations

## Syntax

```powershell
Add-vROPSGroupRemoteCollectors [-server] <String> [-user] <String> [-pass] <String> [-collectorGroupName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSGroupRemoteCollectors` cmdlet creates a collector group in VMware Aria Operations and assigns the remote collector nodes.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to Aria Operations
- Gathers the collector node details
- Creates a new collector group in VMware Aria Operations
- Assigns the deployed collectors to the collector group in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSGroupRemoteCollectors -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -collectorGroupName "sfo-remote-collectors"
```

This example creates a Collector group called 'sfo-remote-collectors' and assigns the Remove Collector Nodes in VMware Aria Operations.

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

The password used to authenticate to SDDC Manager.

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

### -collectorGroupName

The name of the Collector Group to create in VMware Aria Operations.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
