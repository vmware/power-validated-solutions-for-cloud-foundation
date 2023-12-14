# Undo-VmStartupRule

## Synopsis

Remove a VM to VM DRS rule

## Syntax

```powershell
Undo-VmStartupRule [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-ruleName] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-VmStartupRule` cmdlet removes a vSphere DRS Virtual Machine to Virtual Machine startup rule.
The cmdlet
connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that that the Virtual Machine to Virtual Machine startup rule has not already been removed from the vCenter Server inventory
- Removes the vSphere DRS Virtual Machine to Virtual Machine startup rule from the vCenter Server inventory.

## Examples

### Example 1

```powershell
Undo-VmStartupRule -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -ruleName vm-vm-rule-wsa-vrli
```

This example shows how to remove a vSphere DRS Cluster group from the vCenter Server of the sfo-m01 workload domain.

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

The SDDC Manager admin user.

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

The SDDC Manager admin password.

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

The SDDC Manager domain.

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

### -ruleName

The name of the vSphere DRS Virtual Machine to Virtual Machine startup rule to remove.

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
