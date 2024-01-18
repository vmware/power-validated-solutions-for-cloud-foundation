# Update-vRACloudAccountZone

## Synopsis

Update Cloud Zone Configuration

## Syntax

```powershell
Update-vRACloudAccountZone [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-vraUser] <String> [-vraPass] <String> [[-tagKey] <String>] [[-tagValue] <String>] [[-folder] <String>]
 [[-resourcePool] <String>] [[-placementPolicy] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-vRACloudAccountZone` cmdlet updated the Cloud Zone with folder and tags on the resource pool for a
Workload Domain in VMware Aria Automation.
The cmdlet connects to SDDC Manager using the -server, -user,
and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates the Workload Domain is available in the SDDC Manager inventory
- Validates that VMware Aria Automation has been deployed in VMware Cloud Foundation aware mode and retrieves its details
- Validates that network connectivity and authentication is possible to VMware Aria Automation
- Validates that a Cloud Account exists for the Workload Domain in VMware Aria Automation instance
- Validates that the Resource Pool is available in VMware Aria Automation as a Compute Resource
- Adds the tag to the Resource Pool Compute Resource
- Adds the folder to the Cloud Account Zone as a target
- Adds a dynamic filter to use the defined tags
- Updates the placement policy.

## Examples

### Example 1

```powershell
Update-vRACloudAccountZone -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -vraUser configadmin -vraPass VMw@re1! -tagKey enabled -tagValue true -folder "sfo-w01-fd-workload" -resourcePool "sfo-w01-cl01-rp-workload"
```

This example updates the Cloud Zone for the Workload Domain with a default folder and adds tags to the resource pool for dynamic provisioning in VMware Aria Automation

### Example 2

```powershell
Update-vRACloudAccountZone -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -vraUser configadmin -vraPass VMw@re1! -placementPolicy ADVANCED
```

This example updates the placement policy for the Cloud Zone to ADVANCED in VMware Aria Automation.

## Parameters

### -server

The SDDC Manager FQDN or IP Address.

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

The SDDC Manager password.

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

The name of the workload domain to run against.

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

### -vraUser

The VMware Aria Automation user name.

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

### -vraPass

The VMware Aria Automation password.

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

### -tagKey

The tag key.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -tagValue

The tag value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -folder

The folder name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -resourcePool

The resource pool name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -placementPolicy

The placement policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
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
