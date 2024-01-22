# Add-AntiAffinityRule

## Synopsis

Creates a vSphere Anti-Affinity rule

## Syntax

```powershell
Add-AntiAffinityRule [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-ruleName] <String> [-antiAffinityVMs] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-AntiAffinityRule` cmdlet creates a vSphere Anti-Affinity rule.
The cmdlet connects to SDDC Manager using
the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the anti-affinity rule has not already been created in the vCenter Server inventory
- Creates the anti-affinity rule in the vCenter Server inventory.

## Examples

### Example 1

```powershell
Add-AntiAffinityRule -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -ruleName sfo-m01-anti-affinity-rule-wsa -antiAffinityVMs "xreg-wsa01a,xreg-wsa01b,xreg-wsa01c"
This example shows how to create a vSphere Anti-Affinity rule in the vCenter Server of the sfo-m01 workload domain
```

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

The VMware Cloud Foundation domain name.

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

The name of the anti-affinity rule to create.

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

### -antiAffinityVMs

The comma separated list of VMs to add to the anti-affinity rule.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
