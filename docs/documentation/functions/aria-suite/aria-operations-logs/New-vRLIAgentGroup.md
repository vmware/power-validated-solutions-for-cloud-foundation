# New-vRLIAgentGroup

## Synopsis

Create a new agent group

## Syntax

```powershell
New-vRLIAgentGroup [-agentGroupType] <String> [-agentGroupName] <String> [-criteria] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRLIAgentGroup` cmdlet creates a new agent group.

## Examples

### Example 1

```powershell
New-vRLIAgentGroup -agentGroupType wsa -criteria sfo-wsa01.sfo.rainpole.io
```

This example creates a new agent group for Workspace ONE Access and assigns the sfo-wsa01.sfo.rainpole.io host

### Example 2

```powershell
New-vRLIAgentGroup -agentGroupType photon -criteria sfo-vcf01.sfo.rainpole.io,xint-vrslcm01.rainpole.io,sfo-wsa01.sfo.rainpole.io
```

This example creates a new agent group for Workspace ONE Access and assigns the hosts provided in the criteria host.

## Parameters

### -agentGroupType

The type of agent group to create. Valid values are wsa and photon.

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

### -agentGroupName

The name of the agent group to create. If not specified, the name is automatically generated.

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

### -criteria

The criteria for the agent group.
For Workspace ONE Access, this is the hostname of the Workspace ONE Access appliance. For VMware Aria Operations for Logs, this is a comma-separated list of hostnames of the VMware Aria Operations for Logs appliances.

```yaml
Type: Array
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
