# Set-WSADirectoryUser

## Synopsis

Add users to directory

## Syntax

```powershell
Set-WSADirectoryUser [-directoryId] <String> [-json] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Set-WSADirectoryUser` cmdlets configures the user/ou that should be synchronized for Workspace ONE Access.

## Examples

### Example 1

```powershell
Set-WSADirectoryUser -directoryId a1c985d5-0eeb-4a66-bc51-11eda9321aac -json (Get-Content -Raw .\adUsers.json)
```

This example configures the user/ou that should be synchronized for Workspace ONE Access.

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

### -json

The JSON file.

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
