# Get-vROPSAuthSource

## Synopsis

Get all the available authentication sources in the system

## Syntax

```powershell
Get-vROPSAuthSource [[-sourceId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSAuthSource` cmdlet gets all the available authentication sources in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSAuthSource
```

This example gets a list of all available authentication sources

### Example 2

```powershell
Get-vROPSAuthSource [[-sourceId] <String>] 
```

This example gets detailed information about the provided authentication source.

## Parameters

### -sourceId

The ID of the authentication source to get.

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
