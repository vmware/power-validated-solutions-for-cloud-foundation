# Get-WSADirectoryDomain

## Synopsis

Get directory domains

## Syntax

```powershell
Get-WSADirectoryDomain [-directoryId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSADirectoryDomain` cmdlets retrieves a list of directory domains in Workspace ONE Access.

## Examples

### Example 1

```powershell
Get-WSADirectoryDomain -directoryId a1c985d5-0eeb-4a66-bc51-11eda9321aac
```

This example retrieves a list of directory domains in Workspace ONE Access.

## Parameters

### -directoryId

The directory ID.

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
