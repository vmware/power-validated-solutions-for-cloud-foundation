# Undo-VMFolder

## Synopsis

Remove a VM Folder

## Syntax

```powershell
Undo-VMFolder [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-folderName] <String>
 [-folderType] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-VMFolder` cmdlet removes a VM and Template folder.
The cmdlet connects to SDDC Manager using the
-server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that the Workload Domain exists in the SDDC Manager inventory
- Retrives the details of the vCenter Server for the Workload Domain provided
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the VM and Template folder is present in the vCenter Server inventory
- Removes the VM and Template folder from the vCenter Server inventory.

## Examples

### Example 1

```powershell
Undo-VMFolder -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -foldername "myFolder" -folderType VM
```

This example shows how to remove the folder myFolder within the VMware Cloud Foundation domain sfo-m01

### Example 2

```powershell
Undo-VMFolder -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -foldername "myFolder" -folderType Datastore
```

This example shows how to remove the storage folder myStorageFolder within the VMware Cloud Foundation domain sfo-m01.

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

### -folderName

The name of the folder to remove.

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

### -folderType

The type of folder to remove.
Valid values are Datacenter, VM, Network, HostAndCluster, and Datastore.

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
