# Get-VrmsDatastore

## Synopsis

Retrieves a list of datastores from a vSphere Replication instance.

## Syntax

```powershell
Get-VrmsDatastore [-site] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VrmsDatastore` cmdlet retrieves a list of all datastores from a vSphere Replication instance.

## Examples

### Example 1

```powershell
Get-VrmsDatastore -site recovery
```

This example retrieves a list of all datastores from the recovery site via vSphere Replication instance.

## Parameters

### -site

The site, either recovery or protected, to target.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
