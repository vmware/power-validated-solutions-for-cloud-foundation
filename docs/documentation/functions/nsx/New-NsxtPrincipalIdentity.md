# New-NsxtPrincipalIdentity

## Synopsis

Add an NSX Principal Identity

## Syntax

```powershell
New-NsxtPrincipalIdentity [-name] <String> [-nodeId] <String> [-role] <String> [-certificateData] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-NsxtPrincipalIdentity` cmdlet adds an NSX Principal Identity.

## Examples

### Example 1

```powershell
New-NsxtPrincipalIdentity -name svc-iom-sfo-m01-nsx -nodeId sfo-m01-nsx01 -role enterprise_admin -certificateData ./sfo-m01-nsx01.cer
```

This example adds an NSX Principal Identity.

## Parameters

### -name

The NSX Principal Identity name.

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

### -nodeId

The NSX Manager node ID.

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

### -role

The NSX Principal Identity role.

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

### -certificateData

The NSX Principal Identity certificate.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
