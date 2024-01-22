# Get-vRLIGroup

## Synopsis

Get list of groups by authentication provider

## Syntax

```powershell
Get-vRLIGroup [-authProvider] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRLIGroup` cmdlet gets a list of groups by authentication provider.

## Examples

### Example 1

```powershell
Get-vRLIGroup -authProvider vidm
```

This example gets a list groups assigned using the Identity Manager authenitcation provider

### Example 2

```powershell
Get-vRLIGroup-authProvider ad
```

This example gets a list groups assigned using the Active Directory authenitcation provider.

## Parameters

### -authProvider

The authentication provider to use.
Valid values are vidm or ad.

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
