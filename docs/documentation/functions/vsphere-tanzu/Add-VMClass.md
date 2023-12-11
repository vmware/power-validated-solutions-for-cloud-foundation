# Add-VMClass

## Synopsis

Retrieves information on a Virtual Machine class

## Syntax

```powershell
Add-VMClass [[-namespace] <String>] [[-vmClass] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Add-VMClass` cmdlet retrieves information on a Virtual Machine class.

## Examples

### Example 1

```powershell
Add-VMClass -namespace sfo-w01-tkc01 -vmClass guaranteed-small

```

This example retrieves all Virtual Machine classes.

## Parameters

### -namespace

The name of the Namespace.

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

### -vmClass

The name of the Virtual Machine class.

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
