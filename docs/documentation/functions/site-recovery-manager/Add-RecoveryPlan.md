# Add-RecoveryPlan

## Synopsis

Adds a Site Recovery Manager recovery plan.

## Syntax

```powershell
Add-RecoveryPlan [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String>
 [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-rpName] <String>
 [-pgName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-RecoveryPlan` cmdlet adds a Site Recovery Manager recovery plan.

The cmdlet connects to SDDC Manager instances in both the protected and recovery sites:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance.
- Validates that network connectivity and authentication is possible to the vCenter Server instance.
- Validates that network connectivity and authentication are possible to the Site Recovery Manager instance.
- Adds a Site Recovery Manager recovery plan.

## Examples

### Example 1

```powershell
Add-RecoveryPlan -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1! -sddcManagerBFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1! -rpName xint-vrops01-rp -pgName xint-vrops01-pg
```

This example adds recovery plan xint-vrops01-rp with protection group xint-vrops01-pg to Site Recovery Manager.

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

### -pgName

The name of the protection group to add to the new recovery plan.

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
