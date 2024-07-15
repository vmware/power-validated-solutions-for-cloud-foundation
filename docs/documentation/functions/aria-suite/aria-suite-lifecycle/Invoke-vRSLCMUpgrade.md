# Invoke-vRSLCMUpgrade

## Synopsis

Perform upgrade operations on VMware Aria Suite Lifecycle.

## Syntax

```powershell
Invoke-vRSLCMUpgrade [-type] <String> [-username] <String> [-password] <String> [[-version] <String>] [-action] <String> [[-url] <String>] [<CommonParameters>]
```

## Description

The `Invoke-vRSLCMUpgrade` cmdlet performs a number of upgrade related operations on VMware Aria Suite Lifecycle.
These include checking for upgrade binaries, performing pre-validation and starting the upgrade.

## Examples

### Example 1

```powershell
Invoke-vRSLCMUpgrade -type CDROM -userName vcfadmin@local -password VMw@re1! -action check
```

This example checks the CDROM for an upgrade package.

### Example 2

```powershell
Invoke-vRSLCMUpgrade -type CDROM -username vcfadmin@local -password VMw@re1! -action prevalidate
```

This example starts an upgrade pre-check.

### Example 3

```powershell
Invoke-vRSLCMUpgrade -type CDROM -username vcfadmin@local -password VMw@re1! -version "8.16.0.4" -action upgrade
```

This example starts the upgrade.

## Parameters

### -type

The location for the upgrade ISO file (Options are CDROM, URL).

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

### -username

The VMware Aria Suite Lifecycle administrative user (e.g. vcfadmin@local).

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

### -password

The VMware Aria Suite Lifecycle administrative user.

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

### -version

The version of VMware Aria Suite Lifecycle to upgrade to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -action

The operation to perform (Options are check, upgrade, prevalidate or prepare).

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

### -url

The url of the upgrade ISO if type is url.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
