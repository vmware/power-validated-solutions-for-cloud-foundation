# Add-vROPSAdapterSrm

## Synopsis

Adds a Site Recovery Manager Adapter to VMware Aria Operations

## Syntax

```powershell
Add-vROPSAdapterSrm [-server] <String> [-user] <String> [-pass] <String> [-srmFqdn] <String>
 [-srmUser] <String> [-srmPass] <String> [[-collectorGroupName] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterSrm` cmdlet adds an Site Recovery Manager Adapter to VMware Aria Operations.
The cmdlet
connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the Workload Domain is valid and then obtains the NSX Manager cluster details
- Validates that the collector group exits in VMware Aria Operations
- Validates that the Adapter and Credentials do not already exist in VMware Aria Operations
- Creates a new Site Recovery Manager Adapter in VMware Aria Operations
- Starts the collection of the Site Recovery Manager Adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapterSrm -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -srmFqdn sfo-m01-srm01.sfo.rainpole.io -srmUser vrops-srm -srmPass VMw@re1!VMw@re1! -collectorGroupName "sfo-remote-collectors"
```

This example creates a Site Recovery Manager Adapter in VMware Aria Operations and assigns to the collector group defined.

## Parameters

### -server

The IP Address or FQDN of the SDDC Manager.

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

The username to authenticate to SDDC Manager.

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

The password to authenticate to SDDC Manager.

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

### -srmFqdn

The FQDN of the Site Recovery Manager instance.

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

### -srmUser

The username to authenticate to Site Recovery Manager.

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

### -srmPass

The password to authenticate to Site Recovery Manager.

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

### -collectorGroupName

The name of the collector group to assign the adapter to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: Default collector group
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
