# Get-VCFDnsSearchDomain

## Synopsis

Get the search domains configured in an SDDC Manager appliance.

## Syntax

```powershell
Get-VCFDnsSearchDomain [[-sddcManagerVmName] <String>] [[-sddcManagerRootPass] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VCFDnsSearchDomain` cmdlet gets the search domains configured in an SDDC Manager appliance.

## Examples

### Example 1

```powershell
Get-VCFDnsSearchDomain
```

This example gets all search domains configured in an SDDC Manager appliance.

## Parameters

### -sddcManagerVmName

The fully qualified domain name of the SDDC Manager.

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

### -sddcManagerRootPass

The root password to authenticate to SDDC Manager appliance..

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
