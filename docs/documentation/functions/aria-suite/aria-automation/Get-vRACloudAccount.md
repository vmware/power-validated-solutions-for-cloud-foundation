# Get-vRACloudAccount

## Synopsis

Get cloud accounts

## Syntax

```powershell
Get-vRACloudAccount [[-type] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRACloudAccount` cmdlet all cloud accounts within the current organization.

## Examples

### Example 1

```powershell
Get-vRACloudAccount
```

This example gets all cloud accounts within the current organization

### Example 2

```powershell
Get-vRACloudAccount -type vsphere
```

This example gets all vsphere cloud accounts within the current organization, supports vsphere, vmw, gcp, nsx-v, nsx-t, aws and azure.

## Parameters

### -type

The type of cloud account to get.

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
