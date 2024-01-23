# New-vRSLCMDatacenterVcenter

## Synopsis

Adds a vCenter Server to a Datacenter to VMware Aria Suite Lifecycle

## Syntax

```powershell
New-vRSLCMDatacenterVcenter [-server] <String> [-user] <String> [-pass] <String> [-datacenterName] <String>
 [-vcenterFqdn] <String> [-userLockerAlias] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRSLCMDatacenterVcenter` cmdlet adds a vCenter Server to a Datacenter to the VMware Aria Suite Lifecycle
Manager inventory.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the vCenter Server has not already been added to the Datacenter
- Adds the vCenter Server to the Datacenter.

## Examples

### Example 1

```powershell
New-vRSLCMDatacenterVcenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -datacenterName xint-m01-dc01 -vcenterFqdn sfo-m01-vc01.sfo.rainpole.io -userLockerAlias sfo-m01-vc01-sfo-m01-dc01
```

This example adds a vCenter Server to a Datacenter in VMware Aria Suite Lifecycle.

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

### -datacenterName

The name of the datacenter to add the vCenter Server to.

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

### -vcenterFqdn

The FQDN of the vCenter Server to add to the Datacenter.

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

### -userLockerAlias

The user locker alias of the vCenter Server to add to the Datacenter.

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
