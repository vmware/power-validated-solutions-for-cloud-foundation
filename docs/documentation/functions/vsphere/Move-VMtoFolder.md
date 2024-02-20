# Move-VMtoFolder

## Synopsis

Moves VMs to a folder

## Syntax

```powershell
Move-VMtoFolder [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-vmList] <String>
 [-folder] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Move-VMtoFolder` cmdlet moves the Virtual Machines to a folder.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Retrives the details of the vCenter Server for the Workload Domain provided
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates the virtual machine exists in the vCenter Server inventory
- Moves the virtual machines provided in the -vmlist parameter.

## Examples

### Example 1

```powershell
Move-VMtoFolder -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -vmList "xint-wsa01a,xint-wsa01b xint-wsa01c" -folder xint-m01-fd-wsa
```

This example shows how to move a list of virtual machines to a new folder.

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

### -vmList

The list of virtual machines to move to the folder.

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

### -folder

The folder to move the virtual machines to.

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
