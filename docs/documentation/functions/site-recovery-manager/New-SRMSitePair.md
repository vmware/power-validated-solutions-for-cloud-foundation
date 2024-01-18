# New-SrmSitePair

## Synopsis

Create a site pair between Site Recovery Manager instances

## Syntax

```powershell
New-SrmSitePair [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String>
 [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-SrmSitePair` cmdlet creates a site pair between Site Recovery Manager instances.
The cmdlet connects to
SDDC Manager in both the protected and recovery sites using the -sddcManagerAFqdn, -sddcManagerAUser,
-sddcManagerAPass, -sddcManagerBFqdn, -sddcManagerBUser, and -sddcManagerBPass values:

- Validates that network connectivity and authentication is possible to both SDDC Manager instances
- Validates that network connectivity and authentication is possible to both vCenter Server instances
- Validates that network connectivity and authentication are possible to both Site Recovery Manager instances
- Create a site pair between the Site Recovery Manager instances integrated with their respective vCenter
Server instances.

## Examples

### Example 1

```powershell
New-SrmSitePair -sddcManagerAFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerAUser administrator@vsphere.local -sddcManagerAPass VMw@re1 -sddcManagerBFqdn lax-vcf01.lax.rainpole.io -sddcManagerBUser administrator@vsphere.local -sddcManagerBPass VMw@re1!
```

This example creates a site pair between Site Recovery Manager instances integrated with the management vCenter Server instance in each site.

## Parameters

### -sddcManagerAFqdn

The fully qualified domain name of the SDDC Manager.
in the protected site.

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

The user name of the SDDC Manager instance in the protected site.

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

The password of the SDDC Manager instance in the protected site.

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
in the recovery site.

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

The user name of the SDDC Manager instance in the recovery site.

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

The password of the SDDC Manager instance in the recovery site.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
