# Set-RecoveryPlan

## Synopsis

Configures a Site Recovery Manager recovery plan.

## Syntax

```powershell
Set-RecoveryPlan [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String> [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-rpName] <String> [-setVmPriority] <Boolean> [[-vmName] <Array>] [[-priority] <String>] [-addCallout] <Boolean> [[-calloutType] <String>] [[-calloutName] <String>] [[-calloutContent] <String>] [[-calloutPositionBefore] <String>] [[-calloutTimeoutSeconds] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-RecoveryPlan` cmdlet configures a Site Recovery Manager recovery plan.
The cmdlet connects to SDDC Manager instances in both the protected and recovery sites:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance.
- Validates that network connectivity and authentication is possible to the vCenter Server instance.
- Validates that network connectivity and authentication are possible to the Site Recovery Manager instance.
- Configures a Site Recovery Manager recovery plan.

## Examples

### Example 1

```powershell
Set-RecoveryPlan -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1! -sddcManagerBFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -rpName xint-vrops01-rp -setVmPriority $true -vmName @("xint-vrops01a","xint-vrops01b","xint-vrops01c") -priority P1 -addCallout $false
```

This example changes the restart priority for virtual machines xint-vrops01a, xint-vrops01b, and xint-vrops01c to P3 in recovery plan xint-vrops01-rp in Site Recovery Manager.

### Example 2

```powershell
Set-RecoveryPlan -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1! -sddcManagerBFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -rpName xint-vrops01-rp -setVmPriotiry $false -addCallout $true -calloutType PROMPT -calloutName "Verify the availability of the load balancer for VMware Aria Operations" -calloutContent "Verify the availability of the load balancer for VMware Aria Operations" -calloutPositionBefore P1 -calloutTimeoutSeconds 0
```

This example adds a callout step before "Power on priority 3 VMs" in recovery plan xint-vrops01-rp in Site Recovery Manager.

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

### -rpName

The name of the new recovery plan.

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

### -setVmPriority

To change the VM restart priority for a virtual machine or set of virtual machines.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -vmName

The name of the virtual machine(s) to target.

Must be presented as an array.

Only applicable if setVmPriority is set to `$true`.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -priority

The restart priority (P1 - P5) of the targeted virtual machine(s).

Only applicable if setVmPriority is set to `$true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -addCallout

To add a callout to the recovery plan.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 11
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -calloutType

The type of callout to be added (One of: PROMPT, RUN_ON_VM, RUN_ON_SRM_SERVER).

Only applicable if `addCallout` is set to `$true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -calloutName

The name of the callout to be added.

Only applicable if `addCallout` is set to `$true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -calloutContent

The content of the callout to be added.

Only applicable if `addCallout` is set to `$true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -calloutPositionBefore

The position of the step before which the callout is to be added (P1 - P5).

For example, a value of P1 sets the callout to appear before Priority 1 VMs are powered on.

Only applicable if `addCallout` is set to `$true`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -calloutTimeoutSeconds

The number of seconds the callout appears before it times out.

Only applicable if `addCallout` is set to `$true` and `calloutType` is either `RUN_ON_VM`or `RUN_ON_SRM_SERVER`.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
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
