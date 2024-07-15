# Set-vCenterPermission

## Synopsis

Sets Permission for user or group in the vCenter Server.
This overrides any existing Global Permissions for the user or group in the vCenter Server.

## Syntax

```powershell
Set-vCenterPermission -server <String> -user <String> -pass <String> -domain <String> -workloadDomain <String> -principal <String> -role <String> [-folderName <String>] [-folderType <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vCenterPermission` cmdlet assigns the Permission/Role to existing user or group in the vCenter Server.
The user/group must exist in the domain prior to running this cmdlet.

## Examples

### Example 1

```powershell
Set-vCenterPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain vsphere.local -workloadDomain sfo-m01 -principal svc-sfo-w01-nsx01-sfo-w01-vc01 -role "NoAccess"
```

This example assigns NoAccess role to the user svc-sfo-w01-nsx01-sfo-w01-vc01 from domain vsphere.local.

### Example 2

```powershell
Set-vCenterPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo -workloadDomain sfo-m01 -principal gg-vc-admins -role "Admin"
```

This example assigns the Admin role to the group gg-vc-admins from domain SFO.

### Example 3

```powershell
Set-vCenterPermission -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo -workloadDomain sfo-m01 -principal sfo-vra-vsphere -role "NoAccess" -folderName "local" -folderType "Datastore"
```

This example assigns the NoAccess role to the user svc-vra-vsphere from domain SFO on the datastore folder named "local".

Note: The functionality is limited to non-nested folders in the default datacenter.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -domain

The Active Directory domain name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -workloadDomain

The SDDC Manager workload domain name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -principal

The user or group name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -role

The role to assign.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -folderName

The folder name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -folderType

The folder type.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
