# Add-vRACloudAccount

## Synopsis

Add a cloud account

## Syntax

```powershell
Add-vRACloudAccount [-type] <String> [-json] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRACloudAccount` cmdlet adds a cloud accounts within the current organization.

## Examples

### Example 1

```powershell
Add-vRACloudAccount -type vsphere -json (Get-Content -raw .\vsphereCloudAccount.json)
```

This example adds a vSphere cloud account within the current organization

### Example 2

```powershell
Add-vRACloudAccount -type nsx-t -json (Get-Content -raw .\nsxCloudAccount.json)
```

This example adds a NSX cloud account within the current organization.

## Parameters

### -type

The type of cloud account to add.

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

### -json

The json file to use to add the cloud account.

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
