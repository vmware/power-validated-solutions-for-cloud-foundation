# Add-vSphereReplication

## Synopsis

Adds a vSphere Replication for a specified virtual machine.

## Syntax

```powershell
Add-vSphereReplication [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String> [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-vmName] <String> [-recoveryPointObjective] <Int32> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vSphereReplication` cmdlet adds vSphere Replication for a specified virtual machine.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance.
- Validates that network connectivity and authentication is possible to the vCenter Server instance.
- Validates that network connectivity and authentication are possible to the vSphere Replication instance.
- Adds a vSphere Replication for the specified virtual machine.

## Examples

### Example 1

```powershell
Add-vSphereReplication --sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1! -sddcManagerBFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -vmName xint-vrslcm01 -recoveryPointObjective 15
```

This example adds vSphere Replication for VM xint-vrslcm01 from the protected instance to the recovery instance.

## Parameters

### -sddcManagerAFqdn

The fully qualified domain name of the SDDC Manager in the protected site.

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

The username to authenticate to the SDDC Manager in the protected site.

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

The password to authenticate to the SDDC Manager in the protected site.

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

The fully qualified domain name of the SDDC Manager in the recovery site.

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

The username to authenticate to the SDDC Manager in the recovery site.

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

The password to authenticate to the SDDC Manager in the recovery site.

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

### -vmName

The name of the virtual machine to target.

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

### -recoveryPointObjective

The number of minutes, within a range of 5 to 1440 (one day), to define the RPO for the new replication.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: 0
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
