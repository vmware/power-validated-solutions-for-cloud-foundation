# Undo-SrmMapping

## Synopsis

Remove a mapping between objects (folder, network, or compute resource) in the protected and failover VCF
instances in Site Recovery Manager

## Syntax

```powershell
Undo-SrmMapping [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String>
 [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-type] <String>
 [-protected] <String> [-recovery] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-SrmMapping` cmdlet removes a mapping between objects (folder, network, or compute resource) in the
protected and failover instances in Site Recovery Manager.
The cmdlet connects to SDDC Manager using the
-server, -user, and -password values:

- Validates that network connectivity and authentication is possible to both SDDC Manager instances
- Validates that network connectivity and authentication is possible to both vCenter Server instances
- Validates that network connectivity and authentication are possible to both Site Recovery Manager instances
- Removes a mapping between objects in the protected and failover instances in Site Recovery Manager as
defined by the -type, -protected, and -recovery parameters.

## Examples

### Example 1

```powershell
Undo-SrmMapping -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1 -sddcManagerBFqdn lax-vcf01.lax.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -type Folder -protected xint-m01-fd-vrslcm -recovery xint-m01-fd-vrslcm
```

This example removes a mapping between protected site folder xint-m01-fd-vrslcm01 and recovery site folder xint-m01-fd-vrslcm01 in Site Recovery Manager.

### Example 2

```powershell
Undo-SrmMapping -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1 -sddcManagerBFqdn lax-vcf01.lax.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -type Network -protected xint-m01-seg01 -recovery xint-m01-seg01
```

This example removes a mapping between protected site network xint-m01-seg01 and recovery site network xint-m01-seg01 in Site Recovery Manager.

### Example 3

```powershell
Undo-SrmMapping -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1 -sddcManagerBFqdn lax-vcf01.lax.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -type Resource -protected sfo-m01-cl01 -recovery lax-m01-cl01
```

This example removes a mapping between protected site compute resource vSphere Cluster sfo-m01-cl01 and recovery site compute resource vSphere Cluster lax-m01-cl01 in Site Recovery Manager.

## Parameters

### -sddcManagerAFqdn

The fully qualified domain name of the SDDC Manager.
managing the protected site.

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

### -sddcManagerAUser

The user name of the SDDC Manager instance managing the protected site.

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

### -sddcManagerAPass

The password of the SDDC Manager instance managing the protected site.

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

### -sddcManagerBFqdn

The fully qualified domain name of the SDDC Manager.
managing the recovery site.

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

### -sddcManagerBUser

The user name of the SDDC Manager instance managing the recovery site.

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

### -sddcManagerBPass

The password of the SDDC Manager instance managing the recovery site.

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

### -type

The type of object to be mapped between the protected and recovery sites.
Valid values are Folder, Network, or Resource.

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

### -protected

The name of the object to be mapped in the protected site.

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

### -recovery

The name of the object to be mapped in the recovery site.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
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
