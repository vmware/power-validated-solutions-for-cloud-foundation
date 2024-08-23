# Get-NsxtGlobalManagerBackupOverview

## Synopsis

Return the backup history for an NSX Local Manager instance.

## SYNTAX

```powershell
Get-NsxtGlobalManagerBackupOverview [-siteId] <String> [<CommonParameters>]
```

## Description

The `Get-NsxtGlobalManagerBackupOverview` cmdlet returns the backup history for an NSX Local Manager instance.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerBackupOverview -siteId sfo-w01-nsx01.sfo.rainpole.io
```

This example returns the backup history for a NSX Local Manager instance based on the site ID.

## Parameters

### -siteId

The siteId of the NSX Local Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
