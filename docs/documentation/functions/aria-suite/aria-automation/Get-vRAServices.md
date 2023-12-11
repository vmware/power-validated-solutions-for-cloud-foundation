# Get-vRAServices

## Synopsis

Get the services.

## Syntax

```powershell
Get-vRAServices [-orgId] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRAServices` cmdlet returns the services information from an organization in VMware Aria Automation.

## Examples

### Example 1

```powershell
Get-vRAServices 
```

This example returns the services information from VMware Aria Automation by orgId.

## Parameters

### -orgId

The organization Id to get the services for.

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
