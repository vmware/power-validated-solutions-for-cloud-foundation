# Add-vROPSAdapterIdentityManager

## Synopsis

Adds an Identity Manager adapter to VMware Aria Operations

## Syntax

```powershell
Add-vROPSAdapterIdentityManager [-server] <String> [-user] <String> [-pass] <String> [-wsaFqdn] <String>
 [-wsaUser] <String> [-wsaPass] <String> [[-collectorGroupName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROPSAdapterIdentityManager` cmdlet adds a Identity Manager adapter to VMware Aria Operations.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations
- Validates that the collector Group exits in VMware Aria Operations
- Validates that the Identity Manager adapter does not already exist in VMware Aria Operations
- Creates a new Identity Manager adapter in VMware Aria Operations.

## Examples

### Example 1

```powershell
Add-vROPSAdapterIdentityManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1! -collectorGroupName "sfo-remote-collectors"
```

This example creates a new Identity Manager adapter and assigns it to the collector group

### Example 2

```powershell
Add-vROPSAdapterIdentityManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1!
```

This example creates a new Identity Manager adapter and assigns it to the 'Default collector group'.

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

### -wsaFqdn

The FQDN of the Workspace ONE Access appliance.

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

### -wsaUser

The Workspace ONE Access administrator user.

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

### -wsaPass

The Workspace ONE Access administrator password.

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

The name of the Collector Group to assign to the Identity Manager Adapter.

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
