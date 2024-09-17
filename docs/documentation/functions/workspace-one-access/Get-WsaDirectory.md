# Get-WsaDirectory

## Synopsis

Retrieve a list of directories.

## Syntax

```powershell
Get-WsaDirectory [-domainName <String>] [-directoryId <String>] [-connector] [<CommonParameters>]
```

## Description

The `Get-WsaDirectory` cmdlets retrieves all directories configured in Workspace ONE Access.

## Examples

### Example 1

```powershell
Get-WsaDirectory
```

This example retrieves a list of all directories in Workspace ONE Access.

### Example 2

```powershell
Get-WsaDirectory -domainName sfo.rainpole.io
```

This example retrieves details for the directory provided if its exists in Workspace ONE Access

### Example 3

```powershell
Get-WsaDirectory -directoryId 7f17c9ef-1b7a-4df4-92cf-936ebab2ae0 -connector
This example retrieves a list of connectors for a directory in Workspace ONE Access.
```

## Parameters

### -domainName

The LDAP Directory domain name.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
