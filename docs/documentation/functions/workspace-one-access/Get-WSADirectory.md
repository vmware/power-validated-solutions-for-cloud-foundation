# Get-WSADirectory

## Synopsis

Get directories

## Syntax

```powershell
Get-WSADirectory [-directoryId <String>] [-connector] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSADirectory` cmdlets retrieves all directories in Workspace ONE Access.

## Examples

### Example 1

```powershell
Get-WSADirectory
```

This example retrieves a list of directories in Workspace ONE Access

### Example 2

```powershell
Get-WSADirectory -connector
```

This example retrieves a list of connectors for a directory in Workspace ONE Access.

## Parameters

### -directoryId

The directory ID.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -connector

The connector switch.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
