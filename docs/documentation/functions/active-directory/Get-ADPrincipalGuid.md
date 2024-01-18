# Get-ADPrincipalGuid

## Synopsis

Get principal GUID details

## Syntax

```powershell
Get-ADPrincipalGuid [-domain] <String> [-user] <String> [-pass] <String> [-principal] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-ADPrincipalGuid` cmdlet retrieves the GUID details for an active directory user or group Active Directory domain.

## Examples

### Example 1

```powershell
Get-ADPrincipalGuid -domain sfo.rainpole.io -user svc-vsphere-ad -pass VMw@re1! -principal gg-sso-admin
```

This example retrieves the details for the gg-sso-admin domain.

## Parameters

### -domain

The Active Directory Domain name.

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

The Active Directory Domain user account to bind to.

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

The Active Directory Domain user account password.

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

### -principal

The Active Directory Domain user or group name.

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
