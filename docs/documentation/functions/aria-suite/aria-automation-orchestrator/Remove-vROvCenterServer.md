# Remove-vROvCenterServer

## Synopsis

Removes a vCenter Server instance from an embedded VMware Aria Automation Orchestrator.

## Syntax

```powershell
Remove-vROvCenterServer [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-vraUser] <String> [-vraPass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Remove-vROvCenterServer` cmdlet invokes the workflow in VMware Aria Automation Orchestrator to remove a vCenter Server.
The cmdlet connects to SDDC Manager using the -server, -user, -password, and -domain values
to return the workload domain vCenter Server details from its inventory and then:

- Makes a connection to the embedded VMware Aria Automation Orchestrator using the -vraUser and -vraPass values
- Verifies the workflow exists
- Verifies that the vCenter Server instance exists in the VMware Aria Automation Orchestrator catalog
- Removes the vCenter Server instance.

## Examples

### Example 1

```powershell
Remove-vROvCenterServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -vraUser configadmin -vraPass VMw@re1!
```

This example removes the vCenter Server instance from the "sfo-w01" workload domain from the embedded VMware Aria Automation Orchestrator catalog.

## Parameters

### -server

The SDDC Manager FQDN or IP Address.

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

The SDDC Manager password.

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

### -domain

The name of the workload domain to run against.

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

### -vraUser

The VMware Aria Automation user name.

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

### -vraPass

The VMware Aria Automation password.

```yaml
Type: String
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
