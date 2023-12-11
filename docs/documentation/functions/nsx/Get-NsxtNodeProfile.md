# Get-NsxtNodeProfile

## Synopsis

Get the NSX node profiles.

## Syntax

```powershell
Get-NsxtNodeProfile [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtNodeProfile` cmdlet returns the node profiles from the NSX Manager.

## Examples

### Example 1

```powershell
Get-NsxtNodeProfile
```

This example returns all the node profiles from the NSX Manager.

### Example 2

```powershell
Get-NsxtNodeProfile -id $id
```

This example returns the node profiles from the NSX Manager using the id.

## Parameters

### -id

The id of the node profile.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
