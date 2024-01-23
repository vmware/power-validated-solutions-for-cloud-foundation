# Add-StorageFolder

## Synopsis

Create a Storage Folder

## Syntax

```powershell
Add-StorageFolder [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-folderName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-StorageFolder` cmdlet creates a Storage folder.
The cmdlet connects to SDDC Manager using the -server,
-user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that the Workload Domain exists in the SDDC Manager inventory
- Retrives the details of the vCenter Server for the Workload Domain provided
- Validates that network connectivity and authentication is possible to vCenter Server
- Validates that the Storage folder is not present in the vCenter Server inventory
- Creates the Storage folder in the vCenter Server inventory.

## Examples

### Example 1

```powershell
Add-StorageFolder -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -foldername "myStorageFolder"
```

This example shows how to create the folder myStorageFolder within the VMware Cloud Foundation domain sfo-m01.

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

The name of the folder to create.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
