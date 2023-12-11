# Test-ADAuthentication

## Synopsis

Test authetication against Active Directory

## Syntax

```powershell
Test-ADAuthentication [-user] <String> [-pass] <String> [[-server] <String>] [[-domain] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-ADAuthentication` cmdlet tests the credentials provided against Active Directory domain.

## Examples

### Example 1

```powershell
Test-ADAuthentication -user svc-vsphere-ad -pass VMw@re1! -server sfo.rainpole.io -domain sfo.rainpole.io
```

This example check that the svc-vsphere-ad user can authenticate to the sfo.rainpole.io domain.

## Parameters

### -user

The Active Directory Domain user account to bind to.

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

### -pass

The Active Directory Domain user account password.

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

### -server

The Active Directory Domain FQDN.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -domain

The Active Directory Domain name

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: $env:USERDOMAIN
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
