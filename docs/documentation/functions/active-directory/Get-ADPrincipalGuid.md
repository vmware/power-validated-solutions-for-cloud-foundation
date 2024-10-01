# Get-ADPrincipalGuid

## Synopsis

Get principal GUID details.

## SYNTAX

```powershell
Get-ADPrincipalGuid [-domainController] <String> [-domain] <String> [-user] <String> [-pass] <String> [-principal] <String> [<CommonParameters>]
```

## Description

The `Get-ADPrincipalGuid` cmdlet retrieves the GUID details for an Active Directory user or group from a domain.

## Examples

### Example 1

```powershell
Get-ADPrincipalGuid -domainController sfo-ad01.sfo.rainpole.io -domain sfo.rainpole.io -user svc-vsphere-ad -pass VMw@re1! -principal gg-vc-admins
```

This example retrieves the details for the group gg-vc-admins from the domain.

## Parameters

### -domainController

The FQDN of the Domain Controller.

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

### -domain

The Active Directory Domain name.

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

### -user

The Active Directory Domain user account to bind to.

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

### -pass

The Active Directory Domain user account password.

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

### -principal

The Active Directory Domain user or group name.

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
