# Search-vROPSUserAccount

## Synopsis

Search for a user account in the source.

## Syntax

```powershell
Search-vROPSUserAccount [[-sourceId] <String>] [[-domain] <String>] [[-userName] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Search-vROPSUserAccount` cmdlet searches for a user account in the source in VMware Aria Operations.

## Examples

### Example 1

```powershell
Search-vROPSUserAccount -sourceId 6d971ad0-a979-4dc1-81af-e77f6c8c158c -domain sfo.rainpole.io -userName "nigel.mccloud"
```

This example searches for a user account in the source defined by source ID.

## Parameters

### -sourceId

The ID of the source to search.

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

### -domain

The domain of the user account to search.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -userName

The name of the user account to search.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
