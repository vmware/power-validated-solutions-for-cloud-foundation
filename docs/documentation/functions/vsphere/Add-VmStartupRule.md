# Add-VmStartupRule

## Synopsis

Creates a VM to VM DRS rule

## Syntax

```powershell
Add-VmStartupRule [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-ruleName] <String>
 [-vmGroup] <String> [-dependOnVmGroup] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-VmStartupRule` cmdlet creates a vSphere DRS Virtual Machine to Virtual Machine startup rule.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that that the Virtual Machine to Virtual Machine startup rule does not already exist in the vCenter Server inventory
- Creates the vSphere DRS Virtual Machine to Virtual Machine startup rule in the vCenter Server inventory.

## Examples

### Example 1

```powershell
Add-VmStartupRule -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -ruleName vm-vm-rule-wsa-vra -vmGroup sfo-m01-vm-group-wsa -dependOnVmGroup sfo-m01-vm-group-vra
```

This example shows how to create a vSphere DRS Cluster group in the vCenter Server of the sfo-m01 workload domain.

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

The name of the vSphere DRS Virtual Machine to Virtual Machine startup rule to create.

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

### -vmGroup

The name of the vSphere DRS Group (VM Group to start first).

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

### -dependOnVmGroup

The name of the vSphere DRS Group (VM Group to start after dependency).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
