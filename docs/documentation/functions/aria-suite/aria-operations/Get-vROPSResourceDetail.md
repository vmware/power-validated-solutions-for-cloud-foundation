# Get-vROPSResourceDetail

## Synopsis

Get resource detail

## Syntax

```powershell
Get-vROPSResourceDetail [-adapter] <String> [-resource] <String> [-objectname] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSResourceDetail` cmdlet gets the details for a resource from VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSResourceDetail -adapter VMWARE -resource Datacenter -objectName sfo-m01-dc01
```

This example gets the resource details.

## Parameters

### -adapter

The adapter to get the resource from.

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

### -resource

The resource to get the details for.

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

### -objectname

The name of the object to get the details for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
