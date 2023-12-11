# New-vRSLCMMyVmwareAccount

## Synopsis

Add a My VMware account to VMware Aria Suite Lifecycle

## Syntax

```powershell
New-vRSLCMMyVmwareAccount [-alias] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRSLCMMyVmwareAccount` cmdlet adds a My VMware account to VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
New-vRSLCMMyVmwareAccount -alias rainpole
```

This example adds a new My VMware account to VMware Aria Suite Lifecycle.

## Parameters

### -alias

The alias of the My VMware account to add to VMware Aria Suite Lifecycle.

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
