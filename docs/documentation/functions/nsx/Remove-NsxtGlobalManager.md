# Remove-NsxtGlobalManager

## Synopsis

Remove a NSX Global Manager appliance.

## Syntax

```powershell
Remove-NsxtGlobalManager [-server] <String> [-user] <String> [-pass] <String> [-sddcDomain] <String> [-vmName] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManager` cmdlet removes the NSX Global Manager appliance from a vSphere Cluster of a workload domain.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to the vCenter Server
- Removes a NSX Global Manager Appliance from a vSphere Cluster

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManager -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcDomain sfo-m01 -vmName sfo-m01-nsx-gm01a
```

This example removes the NSX Global Manager appliance named sfo-m01-nsx-gm01a.

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

The username to authenticate to the SDDC Manager.

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

### -sddcDomain

The name of the workload domain the Photon appliance is deployed to.

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

### -vmName

The name of the virtual machine for the NSX Global Manager appliance.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
