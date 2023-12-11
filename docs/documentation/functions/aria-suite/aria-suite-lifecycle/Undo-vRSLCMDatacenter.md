# Undo-vRSLCMDatacenter

## Synopsis

Deletes a datacenter from VMware Aria Suite Lifecycle

## Syntax

```powershell
Undo-vRSLCMDatacenter [-server] <String> [-user] <String> [-pass] <String> [-datacenterName] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRSLCMDatacenter` cmdlet deletes a datacenter from the VMware Aria Suite Lifecycle inventory.
The
cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the datacenter has not already been removed from the inventory
- Deletes the datacenter from the inventory.

## Examples

### Example 1

```powershell
Undo-vRSLCMDatacenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -datacenterName xint-m01-dc01
```

This example deletes a datacenter from the VMware Aria Suite Lifecycle inventory.

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

### -datacenterName

The name of the datacenter to delete.

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
