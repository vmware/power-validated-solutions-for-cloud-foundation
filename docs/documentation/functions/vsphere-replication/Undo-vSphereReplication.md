# Undo-vSphereReplication

## Synopsis

Removes a vSphere Replication for a specified virtual machine.

## Syntax

```powershell
Undo-vSphereReplication [-sddcManagerAFqdn] <String> [-sddcManagerAUser] <String> [-sddcManagerAPass] <String> [-sddcManagerBFqdn] <String> [-sddcManagerBUser] <String> [-sddcManagerBPass] <String> [-vmName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vSphereReplication` cmdlet adds vSphere Replication for a specified virtual machine.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance.
- Validates that network connectivity and authentication is possible to the vCenter Server instance.
- Validates that network connectivity and authentication are possible to the vSphere Replication instance.
- Removes a vSphere Replication for the specified virtual machine.

## Examples

### Example 1

```powershell
Undo-vSphereReplication -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vmName xint-vrslcm01 
```

This example removes the vSphere Replication for VM xint-vrslcm01.

## Parameters

### -sddcManagerAFqdn

The fully qualified domain name of the SDDC Manager in the protected site.

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

### -sddcManagerAUser

The username to authenticate to the SDDC Manager in the protected site.

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

### -sddcManagerAPass

The password to authenticate to the SDDC Manager in the protected site.

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

### -sddcManagerBFqdn

The fully qualified domain name of the SDDC Manager in the recovery site.

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

### -sddcManagerBUser

The username to authenticate to the SDDC Manager in the recovery site.

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

### -sddcManagerBPass

The password to authenticate to the SDDC Manager in the recovery site.

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

### -vmName

The name of the virtual machine to target.

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
