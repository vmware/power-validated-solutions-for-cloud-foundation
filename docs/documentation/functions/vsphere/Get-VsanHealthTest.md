# Get-VsanHealthTest

## Synopsis

Returns the vSAN healthcheck tests from a vSAN cluster in vCenter Server.

## Syntax

```powershell
Get-VsanHealthTest [-cluster] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-VsanHealthTest` cmdlet returns all vSAN healthcheck tests from a VSAN cluster in vCenter Server.

## Examples

### Example 1

```powershell
Get-VsanHealthTest -cluster sfo-m01-c01
```

This example returns all vSAN healthcheck tests from vSAN cluster sfo-m01-c01 in connected vCenter Server.

## Parameters

### -cluster

The vSAN cluster name.

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
