# Get-vRSLCMLoadbalancer

## Synopsis

Get paginated list of load balancers from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Get-vRSLCMLoadbalancer [-type] <String> [[-available] <Boolean>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Get-vRSLCMLoadbalancer` cmdlet gets a paginated list of load balancers from VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
Get-vRSLCMLoadbalancer -type NSX_T
```

This example gets all load balancers in VMware Aria Suite Lifecycle with a type of NSX_T.

## Parameters

### -type

The type of load balancer.

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

### -available

Switch to get only available load balancers.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
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
