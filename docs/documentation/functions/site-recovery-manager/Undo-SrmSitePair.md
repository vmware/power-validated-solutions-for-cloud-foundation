# Undo-SrmSitePair

## Synopsis

Removes an existing site pair between Site Recovery Manager instances.

## Syntax

``` powershell
Undo-SrmSitePair [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String> [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [<CommonParameters>]
```

## Description

The `Undo-SrmSitePair` cmdlet removes an existing site pair between vSphere Replication and Site Recovery Manager instances.
TThe cmdlet connects to SDDC Manager in both the protected and recovery sites using the -sddcManagerAFqdn, -sddcManagerAUser, -sddcManagerAPass, -sddcManagerBFqdn, -sddcManagerBUser, and -sddcManagerBPass values:

- Validates that network connectivity and authentication is possible to both SDDC Manager instances
- Validates that network connectivity and authentication is possible to both vCenter Server instances
- Validates that network connectivity and authentication are possible to both Site Recovery Manager instances
- Removes a site pair between the vSphere Replication instances
- Removes a site pair between the Site Recovery Manager instances

## Examples

### Example 1

``` powershell
Undo-SrmSitePair -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example removes a site pair between vSphere Replication and Site Recovery Manager instances.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
