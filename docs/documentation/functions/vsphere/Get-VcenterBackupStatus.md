# Get-VcenterBackupStatus

## Synopsis

Returns a list of all backup jobs performed on a vCenter Server instance.

## Syntax

```powershell
Get-VcenterBackupStatus
```

## Description

The `Get-VcenterBackupStatus` cmdlet returns a list of all backups performed on a vCenter Server instance.

## Examples

### Example 1

```powershell
Get-VcenterBackupStatus | Select-Object -Last 1
```

This example demonstrates piping the results of this function into Select-Object to return the status of the last backup.
