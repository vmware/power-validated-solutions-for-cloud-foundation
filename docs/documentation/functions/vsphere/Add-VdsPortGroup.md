# Add-VdsPortGroup

## Synopsis

Create vSphere Distributed port group

## Syntax

```powershell
Add-VdsPortGroup [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-portgroup] <String>
 [-vlan] <Int32> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-VdsPortGroup` cmdlet creates a vSphere Distributed port groups in vCenter Server.
The cmdlet connects
to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible the SDDC Manager instance
- Validates that network connectivity and authentication is possible the vCenter Server instance
- Creates a vSphere Distributed port group in vCenter Server.

## Examples

### Example 1

```powershell
Add-VdsPortGroup -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -portgroup sfo-m01-cl01-vds01-pg-vrms -vlan 2619
```

This example creates a vSphere Distributed port group for VLAN ID 2619 named sfo-m01-cl01-vds01-pg-vrms in vCenter Server.

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

### -portgroup

The name of the vSphere Distributed port group to create.

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

### -vlan

The VLAN ID to assign to the vSphere Distributed port group.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: 0
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
