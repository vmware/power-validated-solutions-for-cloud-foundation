# Add-vRLIAgentGroup

## Synopsis

Creates an agent group in VMware Aria Operations for Logs

## Syntax

```powershell
Add-vRLIAgentGroup [-server] <String> [-user] <String> [-pass] <String> [-agentGroupName] <String>
 [-agentGroupType] <String> [-criteria] <Array> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vRLIAgentGroup` cmdlet creates a new agent group in VMware Aria Operations for Logs.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that VMware Aria Operations for Logs has been deployed in VCF-aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Operations for Logs
- Creates an agent group in the VMware Aria Operations for Logs if not already configured.

## Examples

### Example 1

```powershell
Add-vRLIAgentGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -agentGroupType wsa -agentGroupName "Workspace ONE Access - Appliance Agent Group" -criteria "xint-wsa01a.rainpole.io","xint-wsa01b.rainpole.io","xint-wsa01c.rainpole.io"
```

This example creates an agent group for Workspace ONE Access in VMware Aria Operations for Logs and assigns the Cluster Virtual Machines

### Example 2

```powershell
Add-vRLIAgentGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -agentGroupType photon -agentGroupName "Photon OS - Appliance Agent Group" -criteria "sfo-vcf01.sfo.rainpole.io","xint-vrslcm01.rainpole.io","xint-wsa01a.rainpole.io","xint-wsa01b.rainpole.io","xint-wsa01c.rainpole.io"
```

This example creates an agent group for Photon OS in VMare Aria Operations for Logs and assigns the SDDC Manager, VMware Aria Suite Lifecycle and Workspace ONE Access Cluster Virtual Machines.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username to authenticate to the SDDC Manager.

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

### -pass

The password to authenticate to the SDDC Manager.

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

### -agentGroupName

The Agent Group Name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -agentGroupType

The Agent Group Type (wsa or photon).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -criteria

The Agent Group Criteria.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
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
