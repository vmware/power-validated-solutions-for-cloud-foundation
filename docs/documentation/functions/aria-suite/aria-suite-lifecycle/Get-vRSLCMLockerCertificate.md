# Get-vRSLCMLockerCertificate

## Synopsis

Get list of certificates available in the locker

## Syntax

```powershell
Get-vRSLCMLockerCertificate [[-vmid] <String>] [[-alias] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMLockerCertificate` cmdlet gets a paginated list of certificates available in the locker.

## Examples

### Example 1

```powershell
Get-vRSLCMLockerCertificate
```

This example gets all certificates in the locker

### Example 2

```powershell
Get-vRSLCMLockerCertificate -vmid 83abd0fd-c92d-4d8f-a5e8-9a1fc4fa6009
```

This example gets the details of a certificate based on the vmid

### Example 3

```powershell
Get-vRSLCMLockerCertificate -alias xint-vrops01
```

This example gets the details of a certificate based on the vmid.

## Parameters

### -vmid

The vmid of the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -alias

The alias of the certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
