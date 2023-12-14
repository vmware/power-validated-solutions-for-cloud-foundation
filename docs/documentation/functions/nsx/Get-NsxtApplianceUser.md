# Get-NsxtApplianceUser

## Synopsis

Returns the list of users configued to log in to the NSX appliance.

## Syntax

```powershell
Get-NsxtApplianceUser [[-transportNodeId] <String>] [[-clusterNodeId] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtApplianceUser` cmdlet returns the list of users configured to log in to the NSX appliance.

## Examples

### Example 1

```powershell
Get-NsxtApplianceUser
```

This example returns a all users configued to log in to the NSX appliance.

## Parameters

### -transportNodeId

The id of the transport node.

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

### -clusterNodeId

The id of the cluster node.

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
